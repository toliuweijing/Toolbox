#include <map>
#include <iostream>
#include <boost/function.hpp>
#include <boost/functional/factory.hpp>

class ITest {
public:
    virtual void run() {
        runTest();
    }
    virtual void runTest() = 0;
};


typedef boost::function< ITest* ()> TestFactory;

class TestManager {
public:
    static int Register(TestFactory theFactory) {
    std::cout<<"Registering Test Case"<<std::endl;
        m_NumTests++;
        m_mapAllTests[m_NumTests] = theFactory;
        return m_NumTests;
    }

  void run() {
        for(unsigned uTestID = 1; uTestID <= m_NumTests; uTestID++) {
            ITest* theTestCase = m_mapAllTests[uTestID]();
            theTestCase->run();
            delete theTestCase;
        }
    }

private:
    static unsigned m_NumTests;
    static std::map<unsigned,  TestFactory> m_mapAllTests;
};

unsigned TestManager::m_NumTests = 0;
std::map<unsigned,  TestFactory> TestManager::m_mapAllTests;


template<typename TestCase>
class Test : public ITest {
public:
  unsigned getID() const {
    return m_uTestID;
  }
private:
    static const unsigned m_uTestID;
};
template<typename TestCase> 
const unsigned Test<TestCase>::m_uTestID = TestManager::Register(boost::factory<TestCase*>());



class Test1 : public Test<Test1> {
public:
    virtual void runTest() {
    std::cout<<"Test Id:"<<getID()<<std::endl;
    }
};

class Test2 : public Test<Test2> {
public:
    virtual void runTest() {
    std::cout<<"Test Id:"<<getID()<<std::endl;

    }
};


class Test3 : public Test<Test3> {
public:
    virtual void runTest() {
    std::cout<<"Test Id:"<<getID()<<std::endl;
    }
};

class Test4 : public Test<Test4> {
public:
    virtual void runTest() {
    std::cout<<"Test Id:"<<getID()<<std::endl;
    }
};

int main() {
    TestManager theManager;
    theManager.run();
}

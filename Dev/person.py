class Person: # define a class
    def __init__ (self,name,age): #define an initial method
        self.name =name # add name a t tribute
        self.age = age # add age attribute
    def cohort(self ,eventyear):
        self.birth = eventyear - self.age

#define i' birth cohort" method
ken = Person("Ken",32)

ken.name 

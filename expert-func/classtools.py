"Assorted class utilities and tools"
class AttrDisplay(object):
    '''
    Provides an inheritable pr int overload method that displays
    instances with their class names and a name=value pair for
    each attribute stored on the instance i tself (but not attrs
    inherited from its classes). Can be mixed into any class,
    and will work on any instance.
    '''
    def gatherAttrs(self):
        attrs = []
        for key in sorted(self.__dict__) :
            attrs.append('%s=%s ' % (key, getattr(self, key)))
            return ', '. join (attrs)
    def __str__(self):
        return '[ %s: %s]' % (self.__class__.__name__,self.gatherAttrs())

if __name__== '__main__':
    class TopTest(AttrDisplay):
        count = 0
        def __init__(self):
            self.attrl = TopTest.count
            self.attr2 = TopTest .count+1
            TopTest.count += 2
    class SubTest(TopTest):
        pass
    x, y= TopTest(), SubTest()
    print(x)
    print(y)
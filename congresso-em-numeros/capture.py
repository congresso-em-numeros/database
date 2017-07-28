import imp

utils = imp.load_source('utils','/congresso-em-numeros/utils.py')

class Capture():

    def __init__(self,house=None,api_type=None,api_name=None,table=None,schema=None,entry_columns=[]):
        """ Parent class for data capture.
        :param house: str
        :param api_type: str
        :param api_name: str
        :param table: str
        :param schema: str
        :param entry_columns: list
        """
        self.house = house
        self.api_type = api_type
        self.api_name = api_name
        self.schema = schema
        self.entry_columns = dict.fromkeys(entry_columns)

        if table:
            self.table = table
        else:
            self.table = ('_').join([house, api_type, api_name])

        self.entry_structure = dict.fromkeys(entry_columns)
        self.conn = utils.connect_sqlalchemy()


    def daterange(self,start_date,end_date):
        for n in range(int((start_date - end_date).days)):
            yield start_date - datetime.timedelta(n)
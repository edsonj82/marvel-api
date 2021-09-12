from faker import Faker
faker = Faker()

def factory_mv():
    return {
    "name": faker.name(),
	"aliases": "Thanos",
	"age": 3000,
	"team": "Ordem Negra",
	"active": False
    }
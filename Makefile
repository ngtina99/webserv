NAME = webserv

SRC =  ./src/main.cpp                         \
		./src/Utils.cpp                        \
		./src/ServerConfig.cpp                 \
		./src/directives/Directive.cpp         \
		./src/directives/Autoindex.cpp        \
		./src/directives/AllowMethods.cpp     \
		./src/directives/ServerDirective.cpp  \
		./src/directives/ClientMaxBodySize.cpp\
		./src/directives/ErrorPage.cpp        \
		./src/directives/Listen.cpp           \
		./src/directives/Root.cpp            \
		./src/directives/Path.cpp            \
		./src/directives/Locations.cpp       \
		./src/directives/LocationDirective.cpp\
		./src/directives/MultiDirective.cpp  \
		./src/directives/FilePathDirective.cpp\
		./src/Server.cpp                     \
		./src/ServerManager.cpp             \
		./src/cgi/CgiHandler.cpp           \
		./src/HttpRequest.cpp             \
		./src/Client.cpp                

OBJ = $(SRC:.cpp=.o)

CC = c++
RM = rm -f

CPPFLAGS = -Wall -Wextra -Werror -std=c++98

all: $(NAME)

$(NAME): $(OBJ)
	@echo "👩‍💻 Linking $(NAME)..."
	$(CC) $(CPPFLAGS) $(OBJ) -o $(NAME)
	@echo "✅ Build successful: $(NAME) is ready!"

%.o: %.cpp
	@echo "🛠 Compiling $<"
	@$(CC) $(CPPFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJ)
	@echo "🧹 Object files cleaned"

fclean: clean
	@$(RM) $(NAME)
	@echo "🧹 All files cleaned"

re: fclean all

.PHONY: all clean fclean re

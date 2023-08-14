FROM thejmthon/jmub:slim-buster

RUN git clone https://github.com/SOURCE-FLASH/P_O28.git /root/P_O28

WORKDIR /root/P_O28

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/P_O28/bin:$PATH"

CMD ["python3","-m","P_O28"]

init:
	docker compose run --rm openvpn ovpn_genconfig -u udp://$(url)
	docker compose run --rm openvpn ovpn_initpki

key:
	docker compose run --rm openvpn easyrsa build-client-full $(mail) nopass
	docker compose run --rm openvpn ovpn_getclient $(mail) > ./storage/keys/$(mail).ovpn

up:
	docker compose up -d

down:
	docker compose down

update:
	docker compose pull
	docker compose up -d

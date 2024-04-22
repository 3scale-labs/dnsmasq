DNSMASQ_VERSION:=2.85-14.el9_3.1
LOCAL_REPO=3scale/dnsmasq
IMAGE_REPO=quay.io/3scale/dnsmasq

build:
	buildah bud -f Containerfile -t $(LOCAL_REPO):$(DNSMASQ_VERSION) .

push: 
	buildah tag $(LOCAL_REPO):$(DNSMASQ_VERSION) $(IMAGE_REPO):$(DNSMASQ_VERSION)
	buildah push $(IMAGE_REPO):$(DNSMASQ_VERSION)


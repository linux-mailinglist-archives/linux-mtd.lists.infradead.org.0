Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC4110C90E
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 13:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=96fyenR02fjvHCBAu4NKKxkGHAXrc4YNjUit30eqN+w=; b=WAL
	KZVctrGrERO7iFSFkVizkK13SsDh0alKCOmDDCNUVG2YeGasjtE7xPoe/oc0K8+Xq6mNY9zIcmJek
	h67wagFn30NHuxxi/LKJv00Zm5wuQBCVRoNszxLvGkPu7k193OIAwwMPA+x+g8WSAZS5iw/enhGtU
	qjBakAf1tFoqw0HReLpbQokLZyjb9gr01OnBZozd+foupBEvqjiLyrPmJGYFDMDhXggVG8D034GKI
	/Avaukht5rPXEANTEaRkWntn+IvYdYWvBpAL3SK/eHt5ff+UDa013DSZ7CwOzPQs9J0rxbVnDVglQ
	mVTb8Af549cvJBedhBuEFVQt3UFv6tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJNt-00050V-1X; Thu, 28 Nov 2019 12:59:01 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJNk-0004zn-LL
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 12:58:54 +0000
Received: from orion.localdomain ([95.117.37.214]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MUY9w-1iRTdx29gW-00QSQQ; Thu, 28 Nov 2019 13:54:33 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] include: linux: pci.h: introduce pci_get_device_by_id()
Date: Thu, 28 Nov 2019 13:54:01 +0100
Message-Id: <20191128125406.10417-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:38OkZkxKYjduW4lFWkkXpmNgmHkotIPpFTk3wHRoh85UV7/YYuo
 tgz5yik/NedusSxW1EgyG7xsdphhkXUnNg3Kaof7TO/6+C0AXpfwJ2AXjL4JM4uXw2NbyBs
 fQGSRVXajWCZNgSc2SLQluiWV9mv2n9H8XanaYTkjJ6hXiwKJTrkawaVOivTV782SIyVlhy
 rooI453gLk05E2firCNUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x/bVI3gOHO0=:b8SRXy3cQTU1GMPXvnNm9h
 MP77h4dAhjsztPhIZ5ViC2W8wpGlmZKcErot+FwRwM1cKJkIrzyAjz9ErATwDMp3R0jKJgspj
 ECwTEUh1hPWvQVjuJ0HkB+9BCXhfCKKPhMKFsd/V5poviCOQ6zhhDo6o+bXSqh7NtDTjDATh7
 dO3vF3FXIUBqM5zqEy6lbbf1AyXHkbHU7ZKB9oRELWaJaaMVyhse4C21PHDsc3ezRoriQsiHI
 95QsOlRQ11G1P8gYpSjXUkCon0JqkUSg+9HuZGHQJ8toUaeNTy2wivd4BTDY2aEve9TptIXdW
 jcA8ESAcSDd0HguDf3SiYItRbTP0gR+qcZ6VemEibxnsaGpkRgIe1wkcIHYJK+RdOitCqZ0vi
 b1LXDt22+5Khx2qOGVBYiXTdGmh3DPyY7kUe4HlYn5cG+Ashfa8A3wBRpahgUBIKC//Mtl4gq
 RWqobD9GunYu0SJX0OS7fOFs+Io93Pj5MEdiV1fqIAhVRKY3cW3Z1LsfJdEff02Rhmfn4W3Nb
 aaQFnDcAhEGAFBOGJuDZoYEtXo1djBT5gZC7ruITqXaAUuAcbxhcG5eOvFEZShpvQNs+DWbqn
 IhrqRH+g4BDor3NYDXJKsfvOQUsiOgqjv8E/WiWn+505kc/u1FpJKVS/b2TAZeaDMNFgAjLX8
 LSjgvTh/PHowNpjqchgZ+IFodjQ40iDKOpiVeNv16+Qmve0HQdVzpjww0UH0at+1yzCTaFr/v
 rd3mTknG3pz3HC9VD7s/p92p15LeTLoovZ6bNnjeICggVpLehNuNalNbEtwpvUlUj9brWG2QT
 Qdh4SaJsmg11d0aG2VQxZciM2y9hGIaHd2hXzWKKrAYXxWLNoAfpPpxkBab7RONNYNsZ/y1Ty
 +vl6YAdeoGR8p0KxwDZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_045852_995109_D037825E 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-hwmon@vger.kernel.org, jdelvare@suse.com, vigneshr@ti.com,
 richard@nod.at, linux-pci@vger.kernel.org, rrichter@marvell.com,
 james.morse@arm.com, linux-crypto@vger.kernel.org, miquel.raynal@bootlin.com,
 linux-mtd@lists.infradead.org, linux-edac@vger.kernel.org, linux@roeck-us.net,
 tim@buttersideup.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Enrico Weigelt <info@metux.net>

Introduce a little helper for getting pci device via struct pci_device_id,
helpful for reducing a little bit of boilerplate.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 include/linux/pci.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index eb9f371aa77c..f6650b13724a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1050,6 +1050,21 @@ struct pci_bus *pci_find_next_bus(const struct pci_bus *from);
 
 struct pci_dev *pci_get_device(unsigned int vendor, unsigned int device,
 			       struct pci_dev *from);
+
+/**
+ * pci_get_device_by_id() - get pci dev by struct pci_device_id
+ * @id: pci_device_id struct
+ *
+ * Retrieve PCI device by struct pci_device_id struct
+ *
+ * @return: pointer to struct pci_dev if sucessful, NULL otherwise
+ */
+static inline struct pci_dev *pci_get_device_by_id(
+	const struct pci_device_id *id)
+{
+	return pci_get_device(id->vendor, id->device, NULL);
+}
+
 struct pci_dev *pci_get_subsys(unsigned int vendor, unsigned int device,
 			       unsigned int ss_vendor, unsigned int ss_device,
 			       struct pci_dev *from);
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

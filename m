Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E415EA0B
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Feb 2020 18:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tQAtst13CIcfqJoj6l7WEDTvhU6FNmmKrazc8J9Lsqc=; b=JgBqjpoLX9WamN
	dUXsbj6qTHT0VWkhi9dummw7tBAvPIWe6J790Fq/YIHMAXKRd4WYir4iomIKPsM1KWOUzmpuFGcPW
	wSmPe5z/Eom0bC1wpUvAZsx6Z8yW7rrQoBodu1tdzujbBmL/iZDVB5UqB+v2SHdU+PIO/TjumR3Gh
	CnxM1fJTf40Fm8v9j/EwJwD//jlxSWAqi2KeOVdbs2Nryfh3QyPUQo9SNKZZ8bJco5UNn7r5zhakJ
	5q8AAJ0EJ0Uc4qkQhckT/fvhCpOFltlzlNsMhqySySmTtilM2EljxncOSdRHVWMMyY505d06gBSvs
	XBjaMlwwMh8yDTNFw3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eUV-0008U2-2e; Fri, 14 Feb 2020 17:10:59 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2eUE-0008Ro-P3
 for linux-mtd@lists.infradead.org; Fri, 14 Feb 2020 17:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581700214;
 bh=QfMZZZE8iLkRO6Le7/kgk0wJeDUjLtxhHfOGmKp7fCw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=agqCWkLb1dEAG66G+kGI2CqpcZG4HBlJEzVK6IcHnJJWuIk1qKVe2W8rPteYdsY83
 nv7GPYEIdOmSOlJx5gqlR5wZgXrh6BxClx3yaTvQy8y2L+JDeE5SlOv3neeAABh8zO
 y9eYWfcOOVRr5puSLzhN0KS/nTeSD2L4jRr/9MO4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.214.12]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M5QFB-1j1p8F0485-001NGO; Fri, 14
 Feb 2020 18:10:14 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/4] MAINTAINERS: Add ubifs-authentication.rst to UBIFS
Date: Fri, 14 Feb 2020 18:08:04 +0100
Message-Id: <20200214170833.25803-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:4MCcuiTA+4OPSM3Khcu3EL2aDxPAp3zTVupIPjC90X9RQGUkVOs
 uMI+525Oc9Wtnd4Y7RZqaPb3me46yb5oYGh92ughm/Ef0GzNXL9mslena/+M5vp++nMqu0n
 yOb8j4bdQ5BeKrXbUsV5nz2n+ptNfGMleCVTiRLWw9nTSapl8gA03Q6FQUo5MzxyGYv2TEF
 l0jVAUdvAXkq7LEraBCOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3MsNYlqPH8I=:IlWg6t7ydMVoc840+QnQk+
 lx/V9JCMLQnGkjg/lldasehdjtn6/4ZJHE5kweFmd3qhJM54o19eDjEn3xFB4nAg3/OAHfsfb
 QuuqD3YuL8xXlyey1Huhulkor98HIiS2Bf/4q8rE4nUndc3kEDiMhfAk7iSdmj3GOO1gdFZ/t
 qiDRoNusmmPHTZkB7oqtelDINg6x0sY5b22YVte39ZWjM0t1MbkIZzKA+8r/VsFCRZLKyIhoI
 k56F3oOjse18f55Op8q9oLHrfH7VHODqOnvlVMfoJOQoCuc4maBRBrHEFLgcCyrz5m4cHUycC
 f3jh6TZPI1r5l/XpEr64sVi5yrHeMaLTYvJW29E2OO3OTbWvtvhY1DS369m/ZAvH6/8A6DkNU
 +52zRX2SSpM64CdFUn2lMr/wpog5xlJb/rLz3yYiF5jJVcG2U/ysPa/pryVYWPjJibl3c2HpW
 3csgZ4VANY7YJxHrviVCw54qNDrkWYUjIuz4/drVcl1fgB17fd8sxBK/ORLyBb4q8mOFLHLQe
 AHBFzCg5qdm/gf1FHrk18RuQxlcgZjuHrDbSGEoAB9BsQ46eoiBUzMWif1OtROJ83MKHATPcb
 OBaoUlp+0yrH7L8xOdmgpH5Bb8MWCVehFZXLfxZ0Mivdt2NoeWS4o9JxeO5EbsqB2FOdNOHOR
 x0KE37ANBy0m+vIvZtspCo8ZDxLfzWJFWnHfsNx11JXlMB4HjN9Uj4cxzWiUpexBSNhnO/UQy
 zLHRYQ6Z99SaWud4gqK2K0tv/mEIwF9KTnq9597IXXkJT4zuB9k2MwIkIjWN6i6uy33ohR0ph
 qWkyKw0WktL2OnySMiWBtqCg6cIQIg4is/C/TlMwnWzApvGHXnNMsL4OYLUPLoW1Br3jeo2Q4
 xi4tddyopzJnkylLqHXNqIkqFJhdznpioeZQmi4mY6EuLLyyasf4vK6QPMKAteJ3wuk7i3/i5
 bFavD4D/9rgqmbTayhfzWDq/UAgPx6qXlwppkXu2szRo42AzWThiOL54IiSlFxzRzp4feIm1i
 9RXLSFZnHnMshDRvFfvsMRIgwUDeD4axfPya5SNs6TBdCOnZ8McUKXt/no4tYi5aWzYVnxQDz
 h0netnFFqnCeTCNwWDGqTU+/PZeqEdIT99LePdxK0LIWZtZx+ODrHqloF09nCJhWKknAZ/dOz
 GWK49YVh9CbhHvxREHneX2H7r/uSXNWUWZams4848oFrfVFN5tj2OQQnVG+/1jfBsyPr6QUCZ
 TKjaaORLz+ayZWEmB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_091043_109619_84F4FF7C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [37.201.214.12 listed in dnsbl.sorbs.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Miklos Szeredi <mszeredi@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Tobin C. Harding" <tobin@kernel.org>, Stefan Hajnoczi <stefanha@redhat.com>,
 Jaskaran Singh <jaskaransingh7654321@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5l
dD4KLS0tCiBNQUlOVEFJTkVSUyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCAzOGZlMmYzZjdi
NmYuLjZhNTM2NWYxMGFhNSAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5F
UlMKQEAgLTE3MDQ3LDYgKzE3MDQ3LDcgQEAgVDoJZ2l0IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9ydy91Ymlmcy5naXQgZml4ZXMKIFc6CWh0dHA6Ly93d3cu
bGludXgtbXRkLmluZnJhZGVhZC5vcmcvZG9jL3ViaWZzLmh0bWwKIFM6CVN1cHBvcnRlZAogRjoJ
RG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy91Ymlmcy50eHQKK0Y6CURvY3VtZW50YXRpb24vZmls
ZXN5c3RlbXMvdWJpZnMtYXV0aGVudGljYXRpb24ucnN0CiBGOglmcy91Ymlmcy8KCiBVQ0xJTlVY
IChNNjhLTk9NTVUgQU5EIENPTERGSVJFKQotLQoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=

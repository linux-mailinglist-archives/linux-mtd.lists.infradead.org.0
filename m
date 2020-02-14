Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED6D15EA13
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Feb 2020 18:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYqIFKfX8iDp+aBDMLKUmfyCj9OccSbyjaji9VPhIIk=; b=JeYJgUoKFWw9PE
	XducId12gJer77eLrtyyFjHFI27iF1ZlPco4xrGK0eqkHQczc7prAXx/KB+2Ec7u1AVL084Wzw/ws
	tf0opA/ZgstUeuJxbPXRG01jpO10UayFPM/Ntg65I+c0yP3dd2fo49mKnEzCIq8/ZZn/o6mkSvpcO
	9ddgWapXwb7XV1cKFNAYwuabC5FznQb7170JX/rCubuvCaWYKHTQ76qhViqVJ7R39jrWWloi5a6TN
	0zWE6VlKlARO9bIY0WRuo4o7bPqdiFG6ENHG+Sb1HuYkQ2Mdt+LPCj5l4c0x/5XIpjQWbtC3LX4Ex
	99EYJJ3KqXWYg97khxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eV1-0000UN-Ro; Fri, 14 Feb 2020 17:11:31 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2eUI-0008Tz-Mo
 for linux-mtd@lists.infradead.org; Fri, 14 Feb 2020 17:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581700222;
 bh=C4bRvd+anZPjZdhrq0g5uP15WaxOlA4xkJx2cX/cwR8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Bkddf+wqkD25EPKMI3jhV0ainIMFqqsDml2mz5l4v2TAVBRTYFCnXRaD251FrPOSo
 gHNVJZ2+DAectQi8hPECL/cW8xwW3Z/ZmcA4Vya5NFli3g1x5i+E6p2odymuH9lSQN
 SX8wXWavo7p7IYIELTbhqHcqZZoZzSAiWjPmhNck=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.214.12]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MSbx3-1iwInX26gr-00SzWk; Fri, 14
 Feb 2020 18:10:22 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 4/4] docs: ubifs-authentication: fix Sphinx warning
Date: Fri, 14 Feb 2020 18:08:07 +0100
Message-Id: <20200214170833.25803-4-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214170833.25803-1-j.neuschaefer@gmx.net>
References: <20200214170833.25803-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Rdn58+GqlLmKn3Z54kUzJkfM2zd5RR9+vW93b7mKESA1LfJPTZm
 UahMD4MlDJVlqELtTQVqFi42/6MjWqE7NhhmYjTlzjwihF19LGkIRetM9hdAlBsO5xXYf7i
 DQTIcG44AQa6M+W8Fu0KdALWD8eiFvqimCqtgI7HGCni1yZWZ+PEYIAm9VbxhWDBz1d4/SD
 J/NEWI8jDpZa2TuF0ECTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5htk30vUBLw=:miuq7mT7OvoHijSqAWFP51
 YoAZYMQ0VM4NgA8Um6qsjCuB+aax1crdfkH0frkg0N5M2MHE0ih0HA+fIRk5b0YCjmCRnpWZ5
 WI2D/FH1gjHEfOHPOaTqhoUsgA9lbiu+ACqv4SRQYiR7zmwuvpotcojMuJ5EoEq6b1nef2kkT
 Q3QOUBBn5mltvfkxSiBsA7OFyne9gcfStfJ5ILtkAPTRnUWn3E2eE8iQac9nJHw0XhPeJzlkk
 d6pHB/d3w7kzuoahXZ4YQNTlsRVLFAJdtHg8FWDVnEBTfjm34wcmzRWCCVLZk55jjVgnFLQgV
 0n1e3gX1doV4EMozvOlEeKUod66AORDZboAEc1iGYb9Ih/0IdSOM4BvLX4j4f3OQLSs80O5R3
 z7m9c99kz9I+6EZ3U/YcFn9yg7YduEajiEn8U9veQwnLcmGkuUYPjFpMbhMgNqSB/VDS61FSW
 QkriSHoKjcuO8Bj4u1FjHCqQs1Bh9WsrAehjmtJ1PnVzDk9NwntSR8PBmZxbQUVuCUCbZS3Qz
 SzHaTFTyqGwLIkXCtGGVSlhMXMIlqFDEo+PGI/5JcQ27DZXQ2M70pyVtDGmrMMuex/hkBCk7x
 ZIL9LRVoSDqNB7CxNQBHjNzp6njkdovPOufPWcynBryWfPteuNhWldTOM0YExPa0ub9DDoARD
 //9PcDmHj3WcxrFr1LYvvLgp+MchiumvXSrKVo4yx1cHmdxi6IhsnBzMmCpb+Jdv9nmTOD2ZG
 zYEzNjetfQQdnZYslCuPvazepbhlVeEhNPolkKPVCIX5d5wYNLLA9d8/eOLxF0JeHqyKtHF6E
 yL08bcIqksW2uQOjgkCGB8P/Cjhip0+sP0JIDY5wuJ42YiV2wE10kq506menDlf65woATxxzm
 iWoqSZOK/Jc/W020devIHk3iVM9ZccYni6qH4QhvivCPCrAZvvOBRS7FEKiTRdQFuuOwHEHXX
 +SOZMF9q2VQhb5bV2gm/VWSWoBNEhOicH/NoMwSdE4Vpl8H3sSfmz9xue+tA0gYPq/onkfApr
 69SLdPOdU7p3Oeg/YtUfKO1YV+85jHZA03lAELbYyyL6qNVqfUDg2DGspNXCGs0IEDKc2TZP7
 gDkpcIWHdbR1h9CpQQ/8OKtAvWrb1Qasm4drGoGh2sh5UTti2Eg9vss1jXXXavQ5LbptRUg+h
 eslzLbtOWRZjYPP05Pga7EEwAqRPMULiKkD09eE10SsriYwhHID2VaJfz+zIr18epG8w/sGlc
 TeKe3xYWvKDltl82n
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_091047_037473_161533B6 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [37.201.214.12 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6CgpEb2N1bWVudGF0aW9uL2ZpbGVzeXN0
ZW1zL3ViaWZzLWF1dGhlbnRpY2F0aW9uLnJzdDo5ODogV0FSTklORzoKICBJbmxpbmUgaW50ZXJw
cmV0ZWQgdGV4dCBvciBwaHJhc2UgcmVmZXJlbmNlIHN0YXJ0LXN0cmluZyB3aXRob3V0IGVuZC1z
dHJpbmcuCgpTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5uZXVzY2hhZWZl
ckBnbXgubmV0PgotLS0KIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvdWJpZnMtYXV0aGVudGlj
YXRpb24ucnN0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy91Ymlmcy1hdXRo
ZW50aWNhdGlvbi5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3ViaWZzLWF1dGhlbnRp
Y2F0aW9uLnJzdAppbmRleCAxMmJhYmI5NWE4MjIuLjk3ZjM3ODBjMjYyMCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy91Ymlmcy1hdXRoZW50aWNhdGlvbi5yc3QKKysrIGIv
RG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy91Ymlmcy1hdXRoZW50aWNhdGlvbi5yc3QKQEAgLTEw
MCw3ICsxMDAsNyBAQCBvZiBub2Rlcy4gRWcuIGRhdGEgbm9kZXMgKGBzdHJ1Y3QgdWJpZnNfZGF0
YV9ub2RlYCkgd2hpY2ggc3RvcmUgY2h1bmtzIG9mIGZpbGUKIGNvbnRlbnRzIG9yIGlub2RlIG5v
ZGVzIChgc3RydWN0IHViaWZzX2lub19ub2RlYCkgd2hpY2ggcmVwcmVzZW50IFZGUyBpbm9kZXMu
CiBBbG1vc3QgYWxsIHR5cGVzIG9mIG5vZGVzIHNoYXJlIGEgY29tbW9uIGhlYWRlciAoYHViaWZz
X2NoYCkgY29udGFpbmluZyBiYXNpYwogaW5mb3JtYXRpb24gbGlrZSBub2RlIHR5cGUsIG5vZGUg
bGVuZ3RoLCBhIHNlcXVlbmNlIG51bWJlciwgZXRjLiAoc2VlCi1gZnMvdWJpZnMvdWJpZnMtbWVk
aWEuaGBpbiBrZXJuZWwgc291cmNlKS4gRXhjZXB0aW9ucyBhcmUgZW50cmllcyBvZiB0aGUgTFBU
CitgZnMvdWJpZnMvdWJpZnMtbWVkaWEuaGAgaW4ga2VybmVsIHNvdXJjZSkuIEV4Y2VwdGlvbnMg
YXJlIGVudHJpZXMgb2YgdGhlIExQVAogYW5kIHNvbWUgbGVzcyBpbXBvcnRhbnQgbm9kZSB0eXBl
cyBsaWtlIHBhZGRpbmcgbm9kZXMgd2hpY2ggYXJlIHVzZWQgdG8gcGFkCiB1bnVzYWJsZSBjb250
ZW50IGF0IHRoZSBlbmQgb2YgTEVCcy4KCi0tCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==

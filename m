Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A541CCBE9
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 17:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNubJd/3a79AUuuCcxIS4GsB3fXm5ku4jUv/0RRz4gQ=; b=lkbAmpDc4mqkH2
	bfpiwwPQ2mbv/nGZmznU/57bMDz8t13sWEf1eOlYIPzldUrP+K2fi7YC0wau5vOSm2CrrRD3zR7B6
	jeRJhi5pX7Ag49IIE4C7SUPUHiTHQdyDsFdQwqoO9fRnjb9bVmJ7OTjB7N6kg+SVXD6sMqKENKyp0
	rWiPEpoMF4TtoMjQUIX+KE381eu8Cv9yZEW1tng4p13fkY0PLhEIHXJ9JWsl5DEca5ldMEUleBzeW
	CiAxmavrLyi5JchiOtsvk3cU6WOF0A7zxPRgJLxGr/gjlYxyVl60iAmroWjDIVe+TKzyY3M8OHpLC
	+jc1FPZSrTu+eu2GOAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXng1-0001t2-IG; Sun, 10 May 2020 15:15:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnf8-0007AQ-5t
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 15:14:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id 50so7166219wrc.11
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 08:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yiL2tcabQtZNrRAU/oMLA5eE5aSSg/TjZU7sFTCXXN4=;
 b=ckUlrDuQ0zm6rn6qcAsAGwsaDfCJw3scCynfrSkGG8YUBvYGWO2QDHzLngz7WC3XNS
 6j4y+pWUinVujnBYPHAvCbn2aCy49TgTAJSQ6WCh9RPGZPyMFXXpa4VdspvLJv0XpTFE
 5XI5NX0yjDmHPMemYCZEU2IYL5itIZGYDIR63Ol2zrC0VQ5q9W1UCQ3x0v2p+tOyq490
 YauzUNzP5QgmTE/voH124WkiYaVBu4Yxob7V+5Wb1Q+sj/HVIlwzBqHHMBC48HEgzoHI
 ZhXpsnyMKooSiHqHECEaDQocfaowjw5VVZJ39qFqxxg1WH4tlZzLaqCxGyJVcPJxkfat
 gLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yiL2tcabQtZNrRAU/oMLA5eE5aSSg/TjZU7sFTCXXN4=;
 b=PeQuOi6j+5MqtG0FDhBRBmfS6FXO4dH1VQWPXfsY26BwgI8IW/GXm9Qb+1+HDCvlmE
 42WnNyGZNRyO6Sh1C1EqrNhiJRgOSthk1R3uJa2/MBvfUpLTkUSlI24w8woUdSF38Gvc
 U2WQeG2wTH5iNuMHxK2BbW7/L0ysAwpqcWyxhUg7rLucgKdaunDbUw9G3rwy4XuxDqW8
 vt3MGbOm4QO65XgILGHy5HxUcFhVJybyn/1oOhdML449LI0m7Arks6Mq95W9TbQ6cMWm
 vqqoyL9AnfRxXW4mxd1WKBwgCVbVWotszggS7gTLxfk3MOVWfHKkNPOyw/gINr1DDoO0
 OhBA==
X-Gm-Message-State: AGi0Pubk9a/AnpHC3UyIL3ECCH0opid9zlLHaYZVy+SL8sgc3F8Rpw0A
 oF2TqEPLUm9dhmo0RRVYnlU=
X-Google-Smtp-Source: APiQypKCRMY/lFgd4MaeiDb3UBHqQ/6/dIiXz2n5GB8T9aqaTh4Zsfk4c54EfFkDgBBpbRto7oU3jw==
X-Received: by 2002:adf:fa04:: with SMTP id m4mr13746562wrr.30.1589123678844; 
 Sun, 10 May 2020 08:14:38 -0700 (PDT)
Received: from skynet.lan (198.red-83-49-57.dynamicip.rima-tde.net.
 [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id d133sm25176897wmc.27.2020.05.10.08.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 08:14:38 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH 3/3] nand: brcmnand: support v2.1-v2.2 controllers
Date: Sun, 10 May 2020 17:14:06 +0200
Message-Id: <20200510151406.2527856-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510151406.2527856-1-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_081442_217127_F05073E9 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGVzdGVkIG9uIE5ldGdlYXIgREdORDM3MDB2MiAoQkNNNjM2MiB3aXRoIHYyLjIgY29udHJvbGxl
cikuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21h
aWwuY29tPgotLS0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCA3
NiArKysrKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2NyBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2Jy
Y21uYW5kL2JyY21uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFu
ZC5jCmluZGV4IDcyYjI2OGQ4ZTNhNC4uNzE4YzYwMWQwZTU5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L2JyY21uYW5kL2JyY21uYW5kLmMKQEAgLTMzOCw2ICszMzgsMzYgQEAgZW51bSBicmNtbmFu
ZF9yZWcgewogCUJSQ01OQU5EX0ZDX0JBU0UsCiB9OwogCisvKiBCUkNNTkFORCB2Mi4xLXYyLjIg
Ki8KK3N0YXRpYyBjb25zdCB1MTYgYnJjbW5hbmRfcmVnc192MjFbXSA9IHsKKwlbQlJDTU5BTkRf
Q01EX1NUQVJUXQkJPSAgMHgwNCwKKwlbQlJDTU5BTkRfQ01EX0VYVF9BRERSRVNTXQk9ICAweDA4
LAorCVtCUkNNTkFORF9DTURfQUREUkVTU10JCT0gIDB4MGMsCisJW0JSQ01OQU5EX0lOVEZDX1NU
QVRVU10JCT0gIDB4NWMsCisJW0JSQ01OQU5EX0NTX1NFTEVDVF0JCT0gIDB4MTQsCisJW0JSQ01O
QU5EX0NTX1hPUl0JCT0gIDB4MTgsCisJW0JSQ01OQU5EX0xMX09QXQkJPSAgICAgMCwKKwlbQlJD
TU5BTkRfQ1MwX0JBU0VdCQk9ICAweDQwLAorCVtCUkNNTkFORF9DUzFfQkFTRV0JCT0gICAgIDAs
CisJW0JSQ01OQU5EX0NPUlJfVEhSRVNIT0xEXQk9ICAgICAwLAorCVtCUkNNTkFORF9DT1JSX1RI
UkVTSE9MRF9FWFRdCT0gICAgIDAsCisJW0JSQ01OQU5EX1VOQ09SUl9DT1VOVF0JCT0gICAgIDAs
CisJW0JSQ01OQU5EX0NPUlJfQ09VTlRdCQk9ICAgICAwLAorCVtCUkNNTkFORF9DT1JSX0VYVF9B
RERSXQk9ICAweDYwLAorCVtCUkNNTkFORF9DT1JSX0FERFJdCQk9ICAweDY0LAorCVtCUkNNTkFO
RF9VTkNPUlJfRVhUX0FERFJdCT0gIDB4NjgsCisJW0JSQ01OQU5EX1VOQ09SUl9BRERSXQkJPSAg
MHg2YywKKwlbQlJDTU5BTkRfU0VNQVBIT1JFXQkJPSAgMHg1MCwKKwlbQlJDTU5BTkRfSURdCQkJ
PSAgMHg1NCwKKwlbQlJDTU5BTkRfSURfRVhUXQkJPSAgICAgMCwKKwlbQlJDTU5BTkRfTExfUkRB
VEFdCQk9ICAgICAwLAorCVtCUkNNTkFORF9PT0JfUkVBRF9CQVNFXQk9ICAweDIwLAorCVtCUkNN
TkFORF9PT0JfUkVBRF8xMF9CQVNFXQk9ICAgICAwLAorCVtCUkNNTkFORF9PT0JfV1JJVEVfQkFT
RV0JPSAgMHgzMCwKKwlbQlJDTU5BTkRfT09CX1dSSVRFXzEwX0JBU0VdCT0gICAgIDAsCisJW0JS
Q01OQU5EX0ZDX0JBU0VdCQk9IDB4MjAwLAorfTsKKwogLyogQlJDTU5BTkQgdjMuMy12NC4wICov
CiBzdGF0aWMgY29uc3QgdTE2IGJyY21uYW5kX3JlZ3NfdjMzW10gPSB7CiAJW0JSQ01OQU5EX0NN
RF9TVEFSVF0JCT0gIDB4MDQsCkBAIC01NzEsMTIgKzYwMSwxNiBAQCBzdGF0aWMgaW50IGJyY21u
YW5kX3JldmlzaW9uX2luaXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCiB7CiAJ
c3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBibG9ja19zaXplc192NltdID0geyA4LCAxNiwgMTI4
LCAyNTYsIDUxMiwgMTAyNCwgMjA0OCwgMCB9OwogCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQg
YmxvY2tfc2l6ZXNfdjRbXSA9IHsgMTYsIDEyOCwgOCwgNTEyLCAyNTYsIDEwMjQsIDIwNDgsIDAg
fTsKLQlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXNbXSA9IHsgNTEyLCAyMDQ4
LCA0MDk2LCA4MTkyLCAwIH07CisJc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBibG9ja19zaXpl
c192Ml8yW10gPSB7IDE2LCAxMjgsIDgsIDUxMiwgMjU2LCAwIH07CisJc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludCBibG9ja19zaXplc1tdID0geyAxNiwgMTI4LCA4LCA1MTIsIDAgfTsKKwlzdGF0
aWMgY29uc3QgdW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXNfdjNfNFtdID0geyA1MTIsIDIwNDgsIDQw
OTYsIDgxOTIsIDAgfTsKKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXNfdjJf
MltdID0geyA1MTIsIDIwNDgsIDQwOTYsIDAgfTsKKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50
IHBhZ2Vfc2l6ZXNbXSA9IHsgNTEyLCAyMDQ4LCAwIH07CiAKIAljdHJsLT5uYW5kX3ZlcnNpb24g
PSBuYW5kX3JlYWRyZWcoY3RybCwgMCkgJiAweGZmZmY7CiAKLQkvKiBPbmx5IHN1cHBvcnQgdjQu
MCs/ICovCi0JaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA8IDB4MDQwMCkgeworCS8qIE9ubHkgc3Vw
cG9ydCB2Mi4xKyAqLworCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPCAweDAyMDEpIHsKIAkJZGV2
X2VycihjdHJsLT5kZXYsICJ2ZXJzaW9uICUjeCBub3Qgc3VwcG9ydGVkXG4iLAogCQkJY3RybC0+
bmFuZF92ZXJzaW9uKTsKIAkJcmV0dXJuIC1FTk9ERVY7CkBAIC01OTMsNiArNjI3LDggQEAgc3Rh
dGljIGludCBicmNtbmFuZF9yZXZpc2lvbl9pbml0KHN0cnVjdCBicmNtbmFuZF9jb250cm9sbGVy
ICpjdHJsKQogCQljdHJsLT5yZWdfb2Zmc2V0cyA9IGJyY21uYW5kX3JlZ3NfdjUwOwogCWVsc2Ug
aWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAzMDMpCiAJCWN0cmwtPnJlZ19vZmZzZXRzID0g
YnJjbW5hbmRfcmVnc192MzM7CisJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDIw
MSkKKwkJY3RybC0+cmVnX29mZnNldHMgPSBicmNtbmFuZF9yZWdzX3YyMTsKIAogCS8qIENoaXAt
c2VsZWN0IHN0cmlkZSAqLwogCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNzAxKQpAQCAt
NjE4LDE0ICs2NTQsMjcgQEAgc3RhdGljIGludCBicmNtbmFuZF9yZXZpc2lvbl9pbml0KHN0cnVj
dCBicmNtbmFuZF9jb250cm9sbGVyICpjdHJsKQogCQljdHJsLT5tYXhfcGFnZV9zaXplID0gMTYg
KiAxMDI0OwogCQljdHJsLT5tYXhfYmxvY2tfc2l6ZSA9IDIgKiAxMDI0ICogMTAyNDsKIAl9IGVs
c2UgewotCQljdHJsLT5wYWdlX3NpemVzID0gcGFnZV9zaXplczsKKwkJaWYgKGN0cmwtPm5hbmRf
dmVyc2lvbiA+PSAweDAzMDQpCisJCQljdHJsLT5wYWdlX3NpemVzID0gcGFnZV9zaXplc192M180
OworCQllbHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwMjAyKQorCQkJY3RybC0+cGFn
ZV9zaXplcyA9IHBhZ2Vfc2l6ZXNfdjJfMjsKKwkJZWxzZQorCQkJY3RybC0+cGFnZV9zaXplcyA9
IHBhZ2Vfc2l6ZXM7CisKIAkJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDA2MDApCiAJCQlj
dHJsLT5ibG9ja19zaXplcyA9IGJsb2NrX3NpemVzX3Y2OwotCQllbHNlCisJCWVsc2UgaWYgKGN0
cmwtPm5hbmRfdmVyc2lvbiA+PSAweDA0MDApCiAJCQljdHJsLT5ibG9ja19zaXplcyA9IGJsb2Nr
X3NpemVzX3Y0OworCQllbHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwMjAyKQorCQkJ
Y3RybC0+YmxvY2tfc2l6ZXMgPSBibG9ja19zaXplc192Ml8yOworCQllbHNlCisJCQljdHJsLT5i
bG9ja19zaXplcyA9IGJsb2NrX3NpemVzOwogCiAJCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPCAw
eDA0MDApIHsKLQkJCWN0cmwtPm1heF9wYWdlX3NpemUgPSA0MDk2OworCQkJaWYgKGN0cmwtPm5h
bmRfdmVyc2lvbiA8IDB4MDIwMikKKwkJCQljdHJsLT5tYXhfcGFnZV9zaXplID0gMjA0ODsKKwkJ
CWVsc2UKKwkJCQljdHJsLT5tYXhfcGFnZV9zaXplID0gNDA5NjsKIAkJCWN0cmwtPm1heF9ibG9j
a19zaXplID0gNTEyICogMTAyNDsKIAkJfQogCX0KQEAgLTgxMSw2ICs4NjAsOSBAQCBzdGF0aWMg
dm9pZCBicmNtbmFuZF93cl9jb3JyX3RocmVzaChzdHJ1Y3QgYnJjbW5hbmRfaG9zdCAqaG9zdCwg
dTggdmFsKQogCWVudW0gYnJjbW5hbmRfcmVnIHJlZyA9IEJSQ01OQU5EX0NPUlJfVEhSRVNIT0xE
OwogCWludCBjcyA9IGhvc3QtPmNzOwogCisJaWYgKCFjdHJsLT5yZWdfb2Zmc2V0c1tyZWddKQor
CQlyZXR1cm47CisKIAlpZiAoY3RybC0+bmFuZF92ZXJzaW9uID09IDB4MDcwMikKIAkJYml0cyA9
IDc7CiAJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDYwMCkKQEAgLTg2OSw4ICs5
MjEsMTAgQEAgc3RhdGljIGlubGluZSB1MzIgYnJjbW5hbmRfc3BhcmVfYXJlYV9tYXNrKHN0cnVj
dCBicmNtbmFuZF9jb250cm9sbGVyICpjdHJsKQogCQlyZXR1cm4gR0VOTUFTSyg3LCAwKTsKIAll
bHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNjAwKQogCQlyZXR1cm4gR0VOTUFTSyg2
LCAwKTsKLQllbHNlCisJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDMwMykKIAkJ
cmV0dXJuIEdFTk1BU0soNSwgMCk7CisJZWxzZQorCQlyZXR1cm4gR0VOTUFTSyg0LCAwKTsKIH0K
IAogI2RlZmluZSBOQU5EX0FDQ19DT05UUk9MX0VDQ19TSElGVAkxNgpAQCAtMjM5MCw5ICsyNDQ0
LDExIEBAIHN0YXRpYyBpbnQgYnJjbW5hbmRfc2V0X2NmZyhzdHJ1Y3QgYnJjbW5hbmRfaG9zdCAq
aG9zdCwKIAogCXRtcCA9IG5hbmRfcmVhZHJlZyhjdHJsLCBhY2NfY29udHJvbF9vZmZzKTsKIAl0
bXAgJj0gfmJyY21uYW5kX2VjY19sZXZlbF9tYXNrKGN0cmwpOwotCXRtcCB8PSBjZmctPmVjY19s
ZXZlbCA8PCBOQU5EX0FDQ19DT05UUk9MX0VDQ19TSElGVDsKIAl0bXAgJj0gfmJyY21uYW5kX3Nw
YXJlX2FyZWFfbWFzayhjdHJsKTsKLQl0bXAgfD0gY2ZnLT5zcGFyZV9hcmVhX3NpemU7CisJaWYg
KGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAzMDIpIHsKKwkJdG1wIHw9IGNmZy0+ZWNjX2xldmVs
IDw8IE5BTkRfQUNDX0NPTlRST0xfRUNDX1NISUZUOworCQl0bXAgfD0gY2ZnLT5zcGFyZV9hcmVh
X3NpemU7CisJfQogCW5hbmRfd3JpdGVyZWcoY3RybCwgYWNjX2NvbnRyb2xfb2ZmcywgdG1wKTsK
IAogCWJyY21uYW5kX3NldF9zZWN0b3Jfc2l6ZV8xayhob3N0LCBjZmctPnNlY3Rvcl9zaXplXzFr
KTsKQEAgLTI3NjYsNiArMjgyMiw4IEBAIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGJyY21uYW5k
X3BtX29wcyA9IHsKIEVYUE9SVF9TWU1CT0xfR1BMKGJyY21uYW5kX3BtX29wcyk7CiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGJyY21uYW5kX29mX21hdGNoW10gPSB7CisJeyAu
Y29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXYyLjEiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJi
cmNtLGJyY21uYW5kLXYyLjIiIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXY0
LjAiIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXY1LjAiIH0sCiAJeyAuY29t
cGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXY2LjAiIH0sCi0tIAoyLjI2LjIKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbXRkLwo=

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D6D1CEE23
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 09:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBtqAf0+8a7vDxQ/IS5J/R+7gq+v8x0uUbIMOANERTM=; b=j0RPyBTb4JeOeP
	ziG3sH3j++bx27Rdz2DUXD3AsM9RGWl253FRHI6J0nNFdHVZciYKeFbcUGbwc+Q0Sze4084uJiy70
	GQ3ZdQLD4P2zybZ+JR/HPM1TNJP69xycqEuCFrPnCIDcQoKh9m8maUsPgMwVD8nHmlUCMwknqqCzb
	fl7dPHHfJA+Lhs4/6kMtID+6NWrmEC5K7UDyV9o/jBasEiJDw+oLvS39K0pbN1N1W8EV7/6jzpJ7/
	J4A7DilVhxC0hVDQdmY9DeYgRFuTjRdFjy1svz8MUj6Vp0yfJsipZVYxHjlAJHP9iwzYhpwE1MriV
	LCLaWwJjE0dZbjzA2pug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPRf-00064V-0t; Tue, 12 May 2020 07:35:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPQ5-0004iN-C2
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 07:33:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id d207so5706728wmd.0
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 00:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ixsNvlw387MZJaOG4EoqprXbAiQZedN46n4jODtzyx4=;
 b=cYyOjjIsubCOTHsc75KcRI04tf0EPk9iFTcfeCzscNw4RKkW4s0xJweIPqXP6JM7Uc
 9cRCifxMqLozUB/rEnZMytriUHNJAFvXKv41yGM5PgIjcuqLy0C+jpTOIt3aks8y6XJA
 u5uIxNiND4BS236ol68CBoHklGePk/0v8ILiKE/3pqIHJRXR0zoMpUHnhcUr5CC9tMD9
 IjmY08rFtqrNjMsC112i0tfDENMi6zQ8LLn0b3QyExwsK+4wWNxF2wW5Dca5grUQOYAF
 sOZuZHMnGF7vCeRkInK0Fw+1eud7XwEU6fW6ue1y5ZZkcVOeMvPBCIb8TC1QNFH6HXwH
 4NmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ixsNvlw387MZJaOG4EoqprXbAiQZedN46n4jODtzyx4=;
 b=tOnbO7jcvp1CQOq8kEeEq/29fW8DpnTF3n9m0TMxhgcHmkeKBdnfpPybrVBZ3pzQUm
 vK6uaGGs9k4L+dJ0VACJADHcXObjhRFzD63qMaz9l7s5AEo4eY0TvxsvfNFq2kPcFgCF
 8D1u9R29BiPxRxJmoDtu+WkTbjaCFRc+KHwSKljiYoIx9adg1hwi5Na2gtCN53flOrf5
 xQwBe31SQBI5byCO1LFkv95Cwrrd8Bg8PWuqwIyR7N9U2Pfr4ZvC05ITJwyAEdrf1BLq
 mlm4jmtPQiLR/8ubrWDButTkXwDiDx/BDPTmfulb5bEodUS6JZ2lYqoeQakaiqfDnLip
 Cf9g==
X-Gm-Message-State: AGi0Pub+gu+Cfo6DPG4iGgmX7YvyfqkeYsnhgDrDJIqldET33Dpx7qK0
 85bREp2FoH+u5eJG0+bKrYo=
X-Google-Smtp-Source: APiQypLl6ozksv+UN7C02inIAKaFfhzedDuh2u5VmR4lA/Ocr5LEF+GQUlg9UnM15Zbk+JV5glO3yQ==
X-Received: by 2002:a7b:cf2b:: with SMTP id m11mr33713553wmg.147.1589268819917; 
 Tue, 12 May 2020 00:33:39 -0700 (PDT)
Received: from skynet.lan (198.red-83-49-57.dynamicip.rima-tde.net.
 [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id d9sm5961197wmd.10.2020.05.12.00.33.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 00:33:39 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v2 5/5] mtd: rawnand: brcmnand: support v2.1-v2.2 controllers
Date: Tue, 12 May 2020 09:33:29 +0200
Message-Id: <20200512073329.742893-6-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512073329.742893-1-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
 <20200512073329.742893-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003341_422861_FC06EA94 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
aWwuY29tPgotLS0KIHYyOiBzcGxpdCBwYWdlIHNpemVzIHJlbmFtZSBpbnRvIGEgZGlmZmVyZW50
IHBhdGNoLgogICAgIG5hbWUgYWxsIGJsb2NrIGFuZCBwYWdlIHNpemVzIHZlcnNpb25zLgoKIGRy
aXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCA3NCArKysrKysrKysrKysr
KysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5k
LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCmluZGV4IGVmNjBk
YmJlYWMyYi4uMGFmNGU0MTllZDk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9i
cmNtbmFuZC9icmNtbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2Jy
Y21uYW5kLmMKQEAgLTMzOCw2ICszMzgsMzYgQEAgZW51bSBicmNtbmFuZF9yZWcgewogCUJSQ01O
QU5EX0ZDX0JBU0UsCiB9OwogCisvKiBCUkNNTkFORCB2Mi4xLXYyLjIgKi8KK3N0YXRpYyBjb25z
dCB1MTYgYnJjbW5hbmRfcmVnc192MjFbXSA9IHsKKwlbQlJDTU5BTkRfQ01EX1NUQVJUXQkJPSAg
MHgwNCwKKwlbQlJDTU5BTkRfQ01EX0VYVF9BRERSRVNTXQk9ICAweDA4LAorCVtCUkNNTkFORF9D
TURfQUREUkVTU10JCT0gIDB4MGMsCisJW0JSQ01OQU5EX0lOVEZDX1NUQVRVU10JCT0gIDB4NWMs
CisJW0JSQ01OQU5EX0NTX1NFTEVDVF0JCT0gIDB4MTQsCisJW0JSQ01OQU5EX0NTX1hPUl0JCT0g
IDB4MTgsCisJW0JSQ01OQU5EX0xMX09QXQkJPSAgICAgMCwKKwlbQlJDTU5BTkRfQ1MwX0JBU0Vd
CQk9ICAweDQwLAorCVtCUkNNTkFORF9DUzFfQkFTRV0JCT0gICAgIDAsCisJW0JSQ01OQU5EX0NP
UlJfVEhSRVNIT0xEXQk9ICAgICAwLAorCVtCUkNNTkFORF9DT1JSX1RIUkVTSE9MRF9FWFRdCT0g
ICAgIDAsCisJW0JSQ01OQU5EX1VOQ09SUl9DT1VOVF0JCT0gICAgIDAsCisJW0JSQ01OQU5EX0NP
UlJfQ09VTlRdCQk9ICAgICAwLAorCVtCUkNNTkFORF9DT1JSX0VYVF9BRERSXQk9ICAweDYwLAor
CVtCUkNNTkFORF9DT1JSX0FERFJdCQk9ICAweDY0LAorCVtCUkNNTkFORF9VTkNPUlJfRVhUX0FE
RFJdCT0gIDB4NjgsCisJW0JSQ01OQU5EX1VOQ09SUl9BRERSXQkJPSAgMHg2YywKKwlbQlJDTU5B
TkRfU0VNQVBIT1JFXQkJPSAgMHg1MCwKKwlbQlJDTU5BTkRfSURdCQkJPSAgMHg1NCwKKwlbQlJD
TU5BTkRfSURfRVhUXQkJPSAgICAgMCwKKwlbQlJDTU5BTkRfTExfUkRBVEFdCQk9ICAgICAwLAor
CVtCUkNNTkFORF9PT0JfUkVBRF9CQVNFXQk9ICAweDIwLAorCVtCUkNNTkFORF9PT0JfUkVBRF8x
MF9CQVNFXQk9ICAgICAwLAorCVtCUkNNTkFORF9PT0JfV1JJVEVfQkFTRV0JPSAgMHgzMCwKKwlb
QlJDTU5BTkRfT09CX1dSSVRFXzEwX0JBU0VdCT0gICAgIDAsCisJW0JSQ01OQU5EX0ZDX0JBU0Vd
CQk9IDB4MjAwLAorfTsKKwogLyogQlJDTU5BTkQgdjMuMy12NC4wICovCiBzdGF0aWMgY29uc3Qg
dTE2IGJyY21uYW5kX3JlZ3NfdjMzW10gPSB7CiAJW0JSQ01OQU5EX0NNRF9TVEFSVF0JCT0gIDB4
MDQsCkBAIC01NzEsMTIgKzYwMSwxNiBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9uX2lu
aXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCiB7CiAJc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludCBibG9ja19zaXplc192NltdID0geyA4LCAxNiwgMTI4LCAyNTYsIDUxMiwgMTAy
NCwgMjA0OCwgMCB9OwogCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgYmxvY2tfc2l6ZXNfdjRb
XSA9IHsgMTYsIDEyOCwgOCwgNTEyLCAyNTYsIDEwMjQsIDIwNDgsIDAgfTsKKwlzdGF0aWMgY29u
c3QgdW5zaWduZWQgaW50IGJsb2NrX3NpemVzX3YyXzJbXSA9IHsgMTYsIDEyOCwgOCwgNTEyLCAy
NTYsIDAgfTsKKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IGJsb2NrX3NpemVzX3YyXzFbXSA9
IHsgMTYsIDEyOCwgOCwgNTEyLCAwIH07CiAJc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBwYWdl
X3NpemVzX3YzXzRbXSA9IHsgNTEyLCAyMDQ4LCA0MDk2LCA4MTkyLCAwIH07CisJc3RhdGljIGNv
bnN0IHVuc2lnbmVkIGludCBwYWdlX3NpemVzX3YyXzJbXSA9IHsgNTEyLCAyMDQ4LCA0MDk2LCAw
IH07CisJc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBwYWdlX3NpemVzX3YyXzFbXSA9IHsgNTEy
LCAyMDQ4LCAwIH07CiAKIAljdHJsLT5uYW5kX3ZlcnNpb24gPSBuYW5kX3JlYWRyZWcoY3RybCwg
MCkgJiAweGZmZmY7CiAKLQkvKiBPbmx5IHN1cHBvcnQgdjQuMCs/ICovCi0JaWYgKGN0cmwtPm5h
bmRfdmVyc2lvbiA8IDB4MDQwMCkgeworCS8qIE9ubHkgc3VwcG9ydCB2Mi4xKyAqLworCWlmIChj
dHJsLT5uYW5kX3ZlcnNpb24gPCAweDAyMDEpIHsKIAkJZGV2X2VycihjdHJsLT5kZXYsICJ2ZXJz
aW9uICUjeCBub3Qgc3VwcG9ydGVkXG4iLAogCQkJY3RybC0+bmFuZF92ZXJzaW9uKTsKIAkJcmV0
dXJuIC1FTk9ERVY7CkBAIC01OTMsNiArNjI3LDggQEAgc3RhdGljIGludCBicmNtbmFuZF9yZXZp
c2lvbl9pbml0KHN0cnVjdCBicmNtbmFuZF9jb250cm9sbGVyICpjdHJsKQogCQljdHJsLT5yZWdf
b2Zmc2V0cyA9IGJyY21uYW5kX3JlZ3NfdjUwOwogCWVsc2UgaWYgKGN0cmwtPm5hbmRfdmVyc2lv
biA+PSAweDAzMDMpCiAJCWN0cmwtPnJlZ19vZmZzZXRzID0gYnJjbW5hbmRfcmVnc192MzM7CisJ
ZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDIwMSkKKwkJY3RybC0+cmVnX29mZnNl
dHMgPSBicmNtbmFuZF9yZWdzX3YyMTsKIAogCS8qIENoaXAtc2VsZWN0IHN0cmlkZSAqLwogCWlm
IChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNzAxKQpAQCAtNjE4LDE0ICs2NTQsMjcgQEAgc3Rh
dGljIGludCBicmNtbmFuZF9yZXZpc2lvbl9pbml0KHN0cnVjdCBicmNtbmFuZF9jb250cm9sbGVy
ICpjdHJsKQogCQljdHJsLT5tYXhfcGFnZV9zaXplID0gMTYgKiAxMDI0OwogCQljdHJsLT5tYXhf
YmxvY2tfc2l6ZSA9IDIgKiAxMDI0ICogMTAyNDsKIAl9IGVsc2UgewotCQljdHJsLT5wYWdlX3Np
emVzID0gcGFnZV9zaXplc192M180OworCQlpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDMw
NCkKKwkJCWN0cmwtPnBhZ2Vfc2l6ZXMgPSBwYWdlX3NpemVzX3YzXzQ7CisJCWVsc2UgaWYgKGN0
cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAyMDIpCisJCQljdHJsLT5wYWdlX3NpemVzID0gcGFnZV9z
aXplc192Ml8yOworCQllbHNlCisJCQljdHJsLT5wYWdlX3NpemVzID0gcGFnZV9zaXplc192Ml8x
OworCiAJCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNjAwKQogCQkJY3RybC0+YmxvY2tf
c2l6ZXMgPSBibG9ja19zaXplc192NjsKLQkJZWxzZQorCQllbHNlIGlmIChjdHJsLT5uYW5kX3Zl
cnNpb24gPj0gMHgwNDAwKQogCQkJY3RybC0+YmxvY2tfc2l6ZXMgPSBibG9ja19zaXplc192NDsK
KwkJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDIwMikKKwkJCWN0cmwtPmJsb2Nr
X3NpemVzID0gYmxvY2tfc2l6ZXNfdjJfMjsKKwkJZWxzZQorCQkJY3RybC0+YmxvY2tfc2l6ZXMg
PSBibG9ja19zaXplc192Ml8xOwogCiAJCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPCAweDA0MDAp
IHsKLQkJCWN0cmwtPm1heF9wYWdlX3NpemUgPSA0MDk2OworCQkJaWYgKGN0cmwtPm5hbmRfdmVy
c2lvbiA8IDB4MDIwMikKKwkJCQljdHJsLT5tYXhfcGFnZV9zaXplID0gMjA0ODsKKwkJCWVsc2UK
KwkJCQljdHJsLT5tYXhfcGFnZV9zaXplID0gNDA5NjsKIAkJCWN0cmwtPm1heF9ibG9ja19zaXpl
ID0gNTEyICogMTAyNDsKIAkJfQogCX0KQEAgLTgxMSw2ICs4NjAsOSBAQCBzdGF0aWMgdm9pZCBi
cmNtbmFuZF93cl9jb3JyX3RocmVzaChzdHJ1Y3QgYnJjbW5hbmRfaG9zdCAqaG9zdCwgdTggdmFs
KQogCWVudW0gYnJjbW5hbmRfcmVnIHJlZyA9IEJSQ01OQU5EX0NPUlJfVEhSRVNIT0xEOwogCWlu
dCBjcyA9IGhvc3QtPmNzOwogCisJaWYgKCFjdHJsLT5yZWdfb2Zmc2V0c1tyZWddKQorCQlyZXR1
cm47CisKIAlpZiAoY3RybC0+bmFuZF92ZXJzaW9uID09IDB4MDcwMikKIAkJYml0cyA9IDc7CiAJ
ZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDYwMCkKQEAgLTg2OSw4ICs5MjEsMTAg
QEAgc3RhdGljIGlubGluZSB1MzIgYnJjbW5hbmRfc3BhcmVfYXJlYV9tYXNrKHN0cnVjdCBicmNt
bmFuZF9jb250cm9sbGVyICpjdHJsKQogCQlyZXR1cm4gR0VOTUFTSyg3LCAwKTsKIAllbHNlIGlm
IChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNjAwKQogCQlyZXR1cm4gR0VOTUFTSyg2LCAwKTsK
LQllbHNlCisJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDMwMykKIAkJcmV0dXJu
IEdFTk1BU0soNSwgMCk7CisJZWxzZQorCQlyZXR1cm4gR0VOTUFTSyg0LCAwKTsKIH0KIAogI2Rl
ZmluZSBOQU5EX0FDQ19DT05UUk9MX0VDQ19TSElGVAkxNgpAQCAtMjM5MCw5ICsyNDQ0LDExIEBA
IHN0YXRpYyBpbnQgYnJjbW5hbmRfc2V0X2NmZyhzdHJ1Y3QgYnJjbW5hbmRfaG9zdCAqaG9zdCwK
IAogCXRtcCA9IG5hbmRfcmVhZHJlZyhjdHJsLCBhY2NfY29udHJvbF9vZmZzKTsKIAl0bXAgJj0g
fmJyY21uYW5kX2VjY19sZXZlbF9tYXNrKGN0cmwpOwotCXRtcCB8PSBjZmctPmVjY19sZXZlbCA8
PCBOQU5EX0FDQ19DT05UUk9MX0VDQ19TSElGVDsKIAl0bXAgJj0gfmJyY21uYW5kX3NwYXJlX2Fy
ZWFfbWFzayhjdHJsKTsKLQl0bXAgfD0gY2ZnLT5zcGFyZV9hcmVhX3NpemU7CisJaWYgKGN0cmwt
Pm5hbmRfdmVyc2lvbiA+PSAweDAzMDIpIHsKKwkJdG1wIHw9IGNmZy0+ZWNjX2xldmVsIDw8IE5B
TkRfQUNDX0NPTlRST0xfRUNDX1NISUZUOworCQl0bXAgfD0gY2ZnLT5zcGFyZV9hcmVhX3NpemU7
CisJfQogCW5hbmRfd3JpdGVyZWcoY3RybCwgYWNjX2NvbnRyb2xfb2ZmcywgdG1wKTsKIAogCWJy
Y21uYW5kX3NldF9zZWN0b3Jfc2l6ZV8xayhob3N0LCBjZmctPnNlY3Rvcl9zaXplXzFrKTsKQEAg
LTI3NjYsNiArMjgyMiw4IEBAIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGJyY21uYW5kX3BtX29w
cyA9IHsKIEVYUE9SVF9TWU1CT0xfR1BMKGJyY21uYW5kX3BtX29wcyk7CiAKIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGJyY21uYW5kX29mX21hdGNoW10gPSB7CisJeyAuY29tcGF0
aWJsZSA9ICJicmNtLGJyY21uYW5kLXYyLjEiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJy
Y21uYW5kLXYyLjIiIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXY0LjAiIH0s
CiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXY1LjAiIH0sCiAJeyAuY29tcGF0aWJs
ZSA9ICJicmNtLGJyY21uYW5kLXY2LjAiIH0sCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=

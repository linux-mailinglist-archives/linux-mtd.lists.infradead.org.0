Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA418FA54
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 17:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xey9f0Wmx0kntYRPYlh7Xm5q9gJ2xoBfVJz5ASW0jwg=; b=iETT4C6+r6OwPT
	2ZqtuTemU1NuagAceTBNyNoZYoW5Vt7ukdKq/wnimG/4PzuXjV8hrCQIvQoHuNjY0/+fB01t/31/z
	t2kjToKmZNFqY2WkeQD4xW/Tzhc9wNyFgOBJ7NDj8QBwEj38xvxEGuLGGNra+dvbH8Npd4+SUT6Lk
	pXdofCw9D99lWe1GrossBNYyeWkW6uYuI4NMtsjfevOYGSaqTavtw0vYHlC3V4K73ZsXYDH7R/1sM
	yoLBsakfSibkC7xtMS2TK/qI73nKs1kQiQ0c+6ZFGFndHsEUTuY+tfM1sW3A6UcOwwrIbodnnm3nh
	oL3l7kXupBHvpKWUo/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQGQ-00087y-Pt; Mon, 23 Mar 2020 16:49:22 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQGF-00087V-W8
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 16:49:13 +0000
Received: by mail-ot1-x341.google.com with SMTP id w26so8159176otp.8
 for <linux-mtd@lists.infradead.org>; Mon, 23 Mar 2020 09:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CqeNp+sGl5VUGPRguTxE4Iz+llg565b7IIbdQfwom48=;
 b=l9xNV/226QzhW1JRPWMQnarwmEkxqENXX2fhNkxbvPuQVDT+vkzr/pFAqlfK1A28/X
 nhYxivHidxtTiCAo3g2m2zl8/OKJqJdaCMY5qAn1rbI/ShRDu9t3NGhliiB0FwZMchyW
 DVmTGdjdxMjNUZqXkfQ0tzUC9BZM9Pb8Np3lOAA31XwxUTsAxm5YspCjYe6u8C/fuX07
 A3179ZlXvbCTx4DyzLOc/6K4lSsCQyCnaXYSMhDufGlvFpWwikMxmXvWpa/55qemI2yX
 KpKMCSdCfWpo3IjeseAEd4V5SzJg1I1gHNLCY64VKpjhedH6+EyHqdpK1OBkfMVAe9gt
 cY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=CqeNp+sGl5VUGPRguTxE4Iz+llg565b7IIbdQfwom48=;
 b=VG6xlKALh5m3guGj3V0w+9E+36T0k8VBiUuD52gpwQI34lAkcM/Et+dC+9YSBa0Hy8
 hRWF4WzZ7Sla/AYi2Z5+JRr7hEoAE51XeM+2ZrznnkSE5crdTIwUNSgsZtRKqvpCSPtL
 xC3hXy3Lq7EVXqfIoIRBP6KpT5KTxNImq8L7mkooQhcWTGy1TCI3WVKmZvIvn5yBk6od
 a+O2Iyyo70iNLY01AtwFiB70PPDCgnoE4B1lwXiRW3MgXFtG7lCri9FPXAFPAxDn/o5v
 bnVbmqLCljuXYeTfyvpLm+w0+8n94ZBXj6kM85AAK18soVePRh6b6etIF+F+SxDL6Ops
 zU/g==
X-Gm-Message-State: ANhLgQ0T5naf18kcPqia8V+lrsK/jc4ylQSF9klr9OGxVlrF7ZaRFZQr
 RWpswm8RCbFiL7GHNi+BUsiXYzYIUJE+KqcXQvc=
X-Google-Smtp-Source: ADFU+vvzX6HU1hDO8kclNZLRS4933ioSp1b0OHgKaq7VgWcPc8YIUzEnT0HQuqEz5IIL+7ElOEccyOR4+RrorlCblww=
X-Received: by 2002:a4a:8604:: with SMTP id v4mr657169ooh.82.1584982150541;
 Mon, 23 Mar 2020 09:49:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6820:267:0:0:0:0 with HTTP; Mon, 23 Mar 2020 09:49:09
 -0700 (PDT)
From: ANNA JOEL <oliviergeorge444@gmail.com>
Date: Mon, 23 Mar 2020 17:49:09 +0100
Message-ID: <CA+JYH4MwPPjpSf3XkE7aYPDtv2tmYiG0Guh8BKa_ofmKW0L78g@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_094912_034106_4ECFAF8A 
X-CRM114-Status: UNSURE (  -1.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [oliviergeorge444[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [annajoel59[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliviergeorge444[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 ADVANCE_FEE_4_NEW_MONEY Advance Fee fraud and lots of money
 2.0 MONEY_FRAUD_5          Lots of money and many fraud phrases
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
Reply-To: annajoel59@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0gCgoKLS0gCiBBdHRlbnRpb24hIEF0dGVudGlvbiEhCgpGcm9tIHRoZSBEZXNrIE9mOiBCYW5r
IG9mIEFtZXJpY2EgQ29ycG9yYXRlIENlbnRlciwgMTAwIE5vcnRoIFRyeW9uIFN0cmVldCwKQ2hh
cmxvdHRlLApOQyAyODI1NSBGaW5hbmNpYWwgU2VydmljZSBDb21wYW55LgpCYW5rIGNvbnRhY3Q6
IGZjb21wYW55Ym9hQGFvbC5jb20KClRoZSBwcm9ncmFtcyBhcmUgYXMgZm9sbG93czoKCigxKSBF
cmFkaWNhdGlvbiBvZiBzY2FtbWluZyBzdHJhdGVnaWVzIGJ5IGFkdmFuY2UgdGVjaG5vbG9neSBp
bnB1dC4KKDIpIENvbXBlbnNhdGlvbiBvZiBzY2FtIHZpY3RpbXMuCigzKSBIb21lbGVzcyBieSBv
bmxpbmUgc2NhbW1lcnMgc3VjaCBhcyBkYXRpbmcsIHRyYW5zZmVyIGFuZCBsb3R0ZXJ5IGF3YXJk
LgoKSXQgaGFzIGNvbWUgdG8gdGhlIFdvcmxkIEJhbmsgYm9hcmQgb2YgZGlyZWN0b3LigJlzIG5v
dGljZSB0aGF0IHlvdSBoYXZlIG5vdApiZWVuIGdpdmVuIHlvdXIgZnVuZHMgYXMgYSByZXN1bHQg
b2YgY29tcGxhaW50cyB0aGF0IHlvdSBjb3VsZG4ndCBwYXkgdGhlaXIKZm9ybWFsIG9mZmljaWFs
IGNoYXJnZXMsIEFtZXJpY2EgRmVkZXJhbCBHb3Zlcm5tZW50IGluIGNvbmp1bmN0aW9uIHdpdGgg
dGhlCkZpbmFuY2lhbCBDb21wYW55IChCT0EpIGhhcyBiZWVuIG9yZGVyZWQgdG8gdHJhbnNmZXIg
dGhlIHN1bSBvZiBVU0QKNTAwLjAwMC4wMChGaXZlIEh1bmRyZWQgVGhvdXNhbmQgRG9sbGFycykK
ClRoZSBJbnN0cnVjdGlvbnPigJkgeW914oCZcmUgb25seSBhbGxvdyBwYXlpbmcgRnVuZHMgcmVs
ZWFzZSBhcHByb3ZhbCBmb3IgZnVuZHMKdXNlIHdpdGhvdXQgdm9sdW50ZWVyaW5nIHlvdXIgY291
bnRyeSBmaW5hbmNpYWwgbGF3IHdoaWNoIGlzIGxlZ2FsLgoKQW1vdW50IHRvIHBheSBmb3IgRnVu
ZHMgcmVsZWFzZSBhcHByb3ZhbCBmb3IgZnVuZHMgdXNlIGVxdWl2YWxlbnQgb2YgJCA0NQpkb2xs
YXJzIG9ubHkuCgpOb3RlOiBwYXlpbmcgJCA0NSBkb2xsYXIsIGtpbmRseSBpbmRpY2F0ZSByZWNl
aXZpbmcgeW91ciBmdW5kcyBpbiBjYXNoIG9yCkFUTSBjYXJkLgoKVGhlIFdvcmxkIEJhbmsgKElN
RikgaXMgdHJ1bHkgc29ycnkgZm9yIHRoZSBkZWxheWluZyBtYXkgaGF2ZSBjYXVzZWQgeW91CmFu
ZCBob3BlcyB0aGVzZSBmdW5kIHdpbGwgYmUgb2YgZ3JlYXQgaGVscCB0byB5b3UuIFVOSVRFRCBX
RSBTVEFORAoKKEhFQUQgREVQVCA6IEFudGkgc2NhbW1lcnMgcHJvZ3JhbSkuCmNvbnRhY3QgUmVt
aXR0YW5jZSBVbml0ZSAgZm9yIGFueSBJbnF1aXJ5CldoYXRzQXBwICs3IDkyMSA4ODYtOTItOTEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==

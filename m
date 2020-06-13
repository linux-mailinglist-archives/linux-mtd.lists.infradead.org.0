Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD181F815A
	for <lists+linux-mtd@lfdr.de>; Sat, 13 Jun 2020 08:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmo6heWO4G/nIr5RqTpbgx0UrnpC6hPatZZuZkbeRd0=; b=kKx72w9NErRe4B
	LjDoPj3+kF4BtuoYBFLiNqzyPkByDZEtk/3cKTdf9ugNtxK1jh9Y1M0QlXtOgwc7LKkWXbSiVxJsc
	v4L+H9EnGianAA7HiiWH59Trew54S/GYIYcIdj+IXvNMdUra9lqMZ6JFteT5u7RPaQFvAUH8PsYrn
	1AXgFWlGvCoCJkx8gJWSUFwhGhV7QQ3A00WXbiJwrClQS+0cHa0xwzIGzon+p1OiBbuqnQ9SZx388
	HpjfCt9iL6DpDCm2vAq5qe4U5eY8HzOS35L1JmqNSAe7StaN3tXs0gVSvuZYe2nwKcVEWgmgnhbwW
	sX888GqklEdZJiHeNktw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjzz2-00023b-WD; Sat, 13 Jun 2020 06:49:41 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjzyx-00022h-5d
 for linux-mtd@lists.infradead.org; Sat, 13 Jun 2020 06:49:36 +0000
Received: by mail-qk1-x744.google.com with SMTP id b27so11173397qka.4
 for <linux-mtd@lists.infradead.org>; Fri, 12 Jun 2020 23:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=x78l+4Wurav+J/Fur91yS5OJaOV9TWUDD2A/LyJnk2M=;
 b=AjYiMJD5jvxq4ec7chJEjIvsiQL91E784oo1S1YnmVPZbJwCxIrIYOEJk+8sT0jrST
 srLtT/gasywFNXUGf36NKvkRiovpCVrBCqzPqZDK+HyAVAdNT7BBLtasxHrYmjpfZEZF
 etMY6W44R2QpIx6BeSkFc8Ncm0Vi7xy/VTK/yTELYzCizUjjMfvesvrssTDWXw/JUB/Y
 iXsyLk165CcndsoALhrXB9BEozVj54cN0NsA6zQIhSLshRIfx5BmfOefwiPeeA/g/+Sv
 AAVYYNiWDeG+rR4z80ydwSmNpJcGQCkroZ7oLKZFaf26jnVCPZXKUWijmq0mTmvOH+FB
 uWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=x78l+4Wurav+J/Fur91yS5OJaOV9TWUDD2A/LyJnk2M=;
 b=XOdiHgoSWhyWr7K4d3UoscYSFJTyvDwN2aizhBY45sMm7YTTX6yF0lL+5DQhsQA+WE
 JlyuLL6joifAUxJ8svud9XeAKHmFsQodOT6shB2BlbUU8PGx+e/7e0ZuNJQgQvJCEGqE
 c0/hEXRrwzcdMKa+gmrj1XQ8Io0x06z5ASCm17TpEQP/syz7Q5o+P3LjZJqDxYRN40GY
 KejvclQqRIJWJQYz/UuC/fN0mXSlbklRkV0IeFwLPodGhLsI8wFiyRW7MRLfXRvhDmhG
 FZjBo0rB23/XyvRBvVuttZS8veHgDR8b+PeKHJ6PQAgDBR0Nplk1A9Gcznnbp22BawHr
 Ad4A==
X-Gm-Message-State: AOAM531qNTRHe/Lzz8NW0sjDfUiDQwUGb8b1gJwpoJjkxrcXpEdPbbog
 XCFz8hV64Qxuk/Etd7Xjkkk=
X-Google-Smtp-Source: ABdhPJxOJAO6P2/rKc2y4Y1B3RvnqHO3Owc3JC47p8pxoXx4p43i/210mVq6B+sGouZM5g1yalVDdg==
X-Received: by 2002:a37:45d6:: with SMTP id s205mr5923761qka.79.1592030973014; 
 Fri, 12 Jun 2020 23:49:33 -0700 (PDT)
Received: from [192.168.1.204] (pool-98-118-94-114.bstnma.fios.verizon.net.
 [98.118.94.114])
 by smtp.gmail.com with ESMTPSA id x41sm6815592qtb.76.2020.06.12.23.49.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 23:49:32 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [Patch] mtd: set master partition panic write flag
Date: Sat, 13 Jun 2020 02:49:31 -0400
Message-Id: <CB182F6C-EB9E-4E90-BF6E-115C925FCFFE@gmail.com>
References: <20200504235403.13504-1-kdasu.kdev@gmail.com>
In-Reply-To: <20200504235403.13504-1-kdasu.kdev@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
X-Mailer: iPhone Mail (17F80)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_234935_234666_28A7F94D 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CkNhbiB5b3UgcGxlYXNlIGFjY2VwdCB0aGlzIGlmIHRoZXJlIGFyZSBubyBvYmplY3Rpb25zLgoK
S2FtYWwKCj4gT24gTWF5IDQsIDIwMjAsIGF0IDc6NTQgUE0sIEthbWFsIERhc3UgPGtkYXN1Lmtk
ZXZAZ21haWwuY29tPiB3cm90ZToKPiAKPiDvu79DaGVjayBhbmQgc2V0IG1hc3RlciBwYW5pYyB3
cml0ZSBmbGFnIHNvIHRoYXQgbG93IGxldmVsIGRyaXZlcnMKPiBjYW4gdXNlIGl0IHRvIHRha2Ug
cmVxdWlyZWQgYWN0aW9uIHRvIGVuc3VyZSBvb3BzIGRhdGEgZ2V0cyB3cml0dGVuCj4gdG8gYXNz
aWduZWQgbXRkb29wcyBkZXZpY2UgcGFydGl0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEthbWFs
IERhc3UgPGtkYXN1LmtkZXZAZ21haWwuY29tPgo+IC0tLQo+IGRyaXZlcnMvbXRkL210ZGNvcmUu
YyB8IDQgKystLQo+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL210ZGNvcmUuYyBiL2RyaXZlcnMvbXRk
L210ZGNvcmUuYwo+IGluZGV4IDI5MTY2NzQyMDhiMy4uN2UzN2VkMmYzOGVhIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbXRkL210ZGNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL210ZGNvcmUuYwo+
IEBAIC0xMjM1LDggKzEyMzUsOCBAQCBpbnQgbXRkX3BhbmljX3dyaXRlKHN0cnVjdCBtdGRfaW5m
byAqbXRkLCBsb2ZmX3QgdG8sIHNpemVfdCBsZW4sIHNpemVfdCAqcmV0bGVuLAo+ICAgICAgICBy
ZXR1cm4gLUVST0ZTOwo+ICAgIGlmICghbGVuKQo+ICAgICAgICByZXR1cm4gMDsKPiAtICAgIGlm
ICghbXRkLT5vb3BzX3BhbmljX3dyaXRlKQo+IC0gICAgICAgIG10ZC0+b29wc19wYW5pY193cml0
ZSA9IHRydWU7Cj4gKyAgICBpZiAoIW1hc3Rlci0+b29wc19wYW5pY193cml0ZSkKPiArICAgICAg
ICBtYXN0ZXItPm9vcHNfcGFuaWNfd3JpdGUgPSB0cnVlOwo+IAo+ICAgIHJldHVybiBtYXN0ZXIt
Pl9wYW5pY193cml0ZShtYXN0ZXIsIG10ZF9nZXRfbWFzdGVyX29mcyhtdGQsIHRvKSwgbGVuLAo+
ICAgICAgICAgICAgICAgICAgICByZXRsZW4sIGJ1Zik7Cj4gLS0gCj4gMi4xNy4xCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgg
TVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=

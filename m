Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74245922D
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 05:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EhKjEgyzfc0YOGc4WxlRqM4J4y9R6hC6iO02Vcgvnrc=; b=pqzYO0k0DbCyAe
	smFp+1oQ7OUb1VSLoMjDoJKRlR36ZWxyOmY6qWDFfZUtj1FHVgwCAyXIZWe7ztJQcdImelaFz2Kb6
	NGgJfCS6e4AsdXj5gy5AwS+BVvg9/AYKzPRvaESaiFX6DhiRW4vnJRhVo6a4SQSmipv7On8pEk48m
	rqM5PraVgYtJ8lOzQQwFh5gcPaeNoohgl0rCI88pxnvPrev8YiABwVr6uj9s1cjb1BJRw43bwGOJb
	+n95VF9ip/qyzBLecBBHPdiRcoDk4xd5Qr0NneaZVcr1/m1M/ap5qgQJJFeKTM7ifjcfXj8BM8dsT
	7MAseWNeTWCkCvX47kqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghr1-000682-Im; Fri, 28 Jun 2019 03:47:15 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghqh-00066y-Kw
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 03:46:57 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so4811809qtn.13
 for <linux-mtd@lists.infradead.org>; Thu, 27 Jun 2019 20:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=4XNnJ7AzBfIxoku+wu6RTIb2FfJLQtPw7vIFoaLt4IQ=;
 b=q30i0Qo3kQnWs6dxGG4z+COA0eyVsniFhwW49w5nnQDdP4yhbPGPExuz5LKa+JrWlX
 kdtcOQfIQgHyCpxbV8bOIc2VZTU0pBqb/uKI2AzAsOIEe8fy+1PvJbK3DSloiKXjNoMG
 0ipJ5fETUIDTwdguq2pSEECBdW7mU61jDmHy+cQNvEuQ68PAWNyuLVg1JAkwMrxZ1SXL
 7K72n6tma6JugYuHtIHCd8V7Rejn2YJ2A34FQx3jGBuOLskPE1eMUw1AqaZmzjyM6X31
 1p3vr4nGKXCM65WiM03ndNP4/FMRfTV1n20LKAjeE/kqdVR2bK0auCbpp0x9nPfueBMu
 iezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=4XNnJ7AzBfIxoku+wu6RTIb2FfJLQtPw7vIFoaLt4IQ=;
 b=BIjoRBfmVEy49b0MWFlMRm/ObWOUXMXEYFxF7x87ja0dKkwUH6WT3cwlcLrSv9XxYD
 B189QxUwhpg6kCqAH3cKwisDvozC3APYUcAClMKhSFst4/Moc+Ba3UBdSNqOfotFKbF7
 uuCdqkMo5Yx9g28wVeMGzLmIsKAEWgjPZ+7lpYOzp1SNV2IECrdq/rPpHk+oRrlPsGFf
 bybKDAs7hFGPdulek+3UY65Je7qr503IR++VLD3yDRwqeiojPVmI5zZf8EuqyclYqQpK
 Sn7VnLNadTI6h3Q75CmTk7pUumlRpXZq2Pb6cmVp8b5KtAAlJFoU07u05nuspq9Yvp6V
 p3rg==
X-Gm-Message-State: APjAAAV3fixbjOIKHPcazagG1ijvgGqLfGYuIjTFXGxp64DIS+/zufmu
 8pMVGWqED5yamZnYLgVq0M8FL/GxGBQvLVTo3zs=
X-Google-Smtp-Source: APXvYqyBMzTYptISv0npkx2UMJO/Q0v2tAeBhAQKfIfyelMua2hkwn6QzWyGjV4vrx/illc0e/EMyaGZ1dZIqzw0zBo=
X-Received: by 2002:ac8:244f:: with SMTP id d15mr6021045qtd.32.1561693614304; 
 Thu, 27 Jun 2019 20:46:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:2711:0:0:0:0:0 with HTTP; Thu, 27 Jun 2019 20:46:53
 -0700 (PDT)
From: Michael Waddington <michaelwadd061@gmail.com>
Date: Fri, 28 Jun 2019 03:46:53 +0000
Message-ID: <CA+m9+ZjWzC3nZuV5E=NbdouzKBzhPiNeAmZYmwbS0nZv=tjOjA@mail.gmail.com>
Subject: Hello
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_204655_689416_FA40DFEC 
X-CRM114-Status: UNSURE (  -0.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michaelwadd061[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (michaelwadd061[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: vicktoria.abdulmagidbreish@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

UG96ZHJvd2llbmlhIGkgamFrIHR3b2phIHJvZHppbmE/IFByemVwcmFzemFtIHphIHNwb3PDs2Is
IHcgamFraSBkbwpjaWViaWUgcG9kY2hvZHrEmSwgYWxlIHRvIGRsYXRlZ28sIMW8ZSBuaWUgbWFt
IGlubmVnbyB3eWJvcnUuIE5hdGtuxIXFgmVtCnNpxJkgbmEgVHfDs2ogZS1tYWlsIHBvZGN6YXMg
cHJ6ZWdsxIVkYW5pYSBpemJ5IGhhbmRsb3dlaiBEVEMgaQpwb3N0YW5vd2nFgmVtIHNpxJkgeiB0
b2LEhSBza29udGFrdG93YcSHLiBOYXp5d2FtIHNpxJkgTWlzcyBWaWN0b3JpYQpBYmR1bE1hZ2lk
IEJyZWlzaCwgTGliaWpjenlrIHBvIG5hcm9kb3dvxZtjaSBpIGPDs3JrYSBww7PFum5lZ28gcGFu
YQpBYmR1bE1hZ2lkYSBBYmR1bFNhbGFtIEJyZWlzaCB6IExJQllBLiBNw7NqIHptYXLFgnkgb2pj
aWVjIGJ5xYIgYnnFgnltCnByemV3b2RuaWN6xIVjeW0gaSBkeXJla3RvcmVtIGdlbmVyYWxueW0g
TGlieWFuIEludmVzdG1lbnQgQXV0aG9yaXR5LAp6YW5pbSB6b3N0YcWCIHphYml0eSBwcnpleiBz
acWCeSBOQVRPIHBvZGN6YXMgbGliaWpza2llaiB3b2pueSBkb21vd2VqLgoKS29udGFrdHVqxJkg
c2nEmSB6IHRvYsSFIHcgY2VsdSB1enlza2FuaWEgcG9tb2N5IGkgYXN5c3RlbnRhIHByenkKcHJv
amVrY2llIGlud2VzdHljeWpueW0gd2FydHltIGR3YWR6aWXFm2NpYSBzaWVkZW0gbWlsaW9uw7N3
IHBpxJnEh3NldAp0eXNpxJljeSBkb2xhcsOzdyBhbWVyeWthxYRza2ljaCAoMjcsIDUwMCwgMDAw
LCAwMCkgcG9kIHR3b2ltCmtpZXJvd25pY3R3ZW0gdyB0d29pbSBrcmFqdS4gSmVzdGVtIGdvdMOz
dyB3eW5lZ29jam93YcSHIHogVG9ixIUgc3Rvc3VuZWsKenlza8OzdyBkbyBpbndlc3R5Y2ppIGkg
enlza8OzdyB3IG9wYXJjaXUgbyBwcnp5c3rFgmUgenlza2kgeiBpbndlc3R5Y2ppLgoKwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoE1vxbxlc3ogZG93aWVkemll
xIcgc2nEmSB3acSZY2VqIG8ga3J5enlzaWU6Cmh0dHBzOi8vd3d3Lm5kdHYuY29tL3dvcmxkLW5l
d3MvdW4tdW52ZWlscy1wcm9wbGF5cy10by1lbmQtbGlieWEtY3Jpc2lzLTc0OTM0OAoKTcOzaiB6
bWFyxYJ5IG9qY2llYyB6xYJvxbx5xYIgdGVuIGZ1bmR1c3ogdyBqZWRueW0geiBiYW5rw7N3IHcg
QnVya2luYSBGYXNvLAphIGphIG1pYcWCZW0gbmEgaW1pxJkgbmFqYmxpxbxzenkga3Jld255LiBV
ZGHFgm8gbWkgc2nEmSBwcnplZG9zdGHEhyBkbwpCdXJraW5hIEZhc28sIGdkemllIHRlcmF6IG1p
ZXN6a2FtIGpha28gdWNob2TFumNhIHBvZCByesSFZG93xIUgb3BpZWvEhQpiZXogbWF0a2kuIFBv
IHByenlqZcW6ZHppZSBza29udGFrdG93YcWCZW0gc2nEmSB6IGJhbmtpZW0sIGFieSB3eWN6ecWb
Y2nEhwp6ZGVwb25vd2FueSBmdW5kdXN6LCBhbGUgZHlyZWt0b3IgYmFua3UgcG93aWVkemlhxYIg
bWksIMW8ZSBtw7NqCm5pZcW8eWrEhWN5IG9qY2llYyBza8WCYWRhIGluc3RydWtjasSZIG5hIHRl
bWF0IHdwxYJhY29ueSBmdW5kdXN6LCBrdMOzcnkKbXVzesSZIHByemVkc3Rhd2nEhyB6YWdyYW5p
Y3puZW11IHBvd2llcm5pa293aSwga3TDs3J5IHBvbW/FvGUgbWkgdwppbndlc3Rvd2FuaXUgZnVu
ZHVzenUgdyBkb2JyeSBpbnRlcmVzLiBEeXJla3RvciBiYW5rdSBkb3JhZHppxYIgbWksIGFieQpw
cnpla2F6YcSHIHBvd2llcm5pa293aSwga3TDs3J5IHN0YW5pZSB3IG1vaW0gaW1pZW5pdSB6YSBw
cnpla2F6YW5pZQpmdW5kdXN6dS4gaSBkbGF0ZWdvIGtvbnRha3R1asSZIHNpxJkgeiB0b2LEhSB3
IHRlaiBjaHdpbGkuIFpFIFdaR0zEmERVIE5BCktSWVpZUyBXWUrFmkNJT1dZIFcgTElCSUkgdXdh
xbxhbSwgxbxlIGtvbmllY3puZSBqZXN0IHpyw7PFvG5pY293YW5pZQptb2plZ28gcGxhbnUgaW53
ZXN0eWN5am5lZ28gcG96YSBncmFuaWNlIHphbW9yc2tpZSwgYWJ5IHphYmV6cGllY3p5xIcKc2nE
mSBwcnplZCBtb2rEhSBwcnp5c3rFgm/Fm2NpxIUuCgpNQU0gTkFTVMSYUFVKxIRDWSBQTEFOIElO
V0VTVFlDSkkgTkEgVFdPSkUgUk9aV0HFu0FOSUU6CgpBKSBaYXJ6xIVkemFuaWUgbmllcnVjaG9t
b8WbY2lhbWkKCkIpIFJlc3RhdXJhY2phIGkgaG90ZWwKCkMpIFphcnrEhWR6YW5pZSBzenBpdGFs
ZW0KCkQpIFByb2R1a2NqYSDFvHl3bm/Fm2NpCgpKZcWbbGkgbWFzeiBpbm55IG9wxYJhY2Fsbnkg
Yml6bmVzcGxhbiwga3TDs3J5IG1vxbxlIGJ5xIcgemFpbnRlcmVzb3dhbnkKemFpbndlc3Rvd2Fu
aWVtIHcgdHdvaW0ga3JhanUsIHVwcnplam1pZSBvZHBvd2llZHogbmEgcGlsbmUgaW5mb3JtYWNq
ZQpvIHR5bSwgdyBqYWtpIHNwb3PDs2IgZnVuZHVzeiBpbndlc3R5Y3lqbnkgem9zdGFuaWUgcHJ6
ZWthemFueSBwb2QKVHdvasSFIG9waWVrxJkgdyBjZWx1IGRhbHN6ZWdvIGlud2VzdG93YW5pYS4K
CkplZG5ha8W8ZSwgZ2R5IHd5cmF6aXN6IHphaW50ZXJlc293YW5pZSBwb21vY8SFLCBwcnpla2HF
vMSZIGNpIHogbmllemLEmWRuxIUKaW5mb3JtYWNqxIUgbyBkZXBvenljaWUgcG90d2llcmR6ZW5p
ZSBUd29qZWogemdvZHksIGFieSBwb23Ds2MgbWkgdwpwcnpla2F6YW5pdSBpIGlud2VzdHljamkg
ZnVuZHVzenUgdyB0d29pbSBrcmFqdS4gQsSZZMSZIGJhcmR6bwpzemN6xJnFm2xpd3ksIGplxZts
aSBvZHBpc3plc3ogbWkgdyBjZWx1IMWCYXR3ZWoga29tdW5pa2FjamksIGFiecWbbXkgbW9nbGkK
c2nEmSBwb3puYcSHLiBLaWVkeSBvZHBpc3plc3osIHBvZGFtIGNpIG1vamUgemRqxJljaWEgaSBt
w7NqIG9zb2Jpc3R5Cm51bWVyIHRlbGVmb251IG9yYXogd2nEmWNlaiBzemN6ZWfDs8WCw7N3IG8g
c29iaWUgdyBtb2plaiBuYXN0xJlwbmVqCndpYWRvbW/Fm2NpLgoKUHJvc3rEmSBvIGJlenBpZWN6
ZcWEc3R3byBpIHBvdWZueSBwb3fDs2QsIG9kcG93aWVkeiBtaSBwcnpleiBtw7NqCm9zb2Jpc3R5
IGFkcmVzIGUtbWFpbDogdmlja3RvcmlhLmFiZHVsbWFnaWRicmVpc2hAeWFuZGV4LmNvbQoKVHdv
amEgcGlsbmEgb2Rwb3dpZWTFuiB6b3N0YW5pZSBkb2NlbmlvbmEuClogcG93YcW8YW5pZW0sCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=

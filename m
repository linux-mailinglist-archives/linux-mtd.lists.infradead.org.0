Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85A99673D
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 19:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rqxcED9aHJA5xUVD7KqzOFRC997XB3YShy1QaPs0JaQ=; b=UGB2p/DVwaVQ5h
	0uvunGyQ0EYRDX6hlfp2wCHOF3CpPlJ5srvIs8u2RWvzgusPTuGYOhMqAUxNpzv23Cyyy0s0ntihE
	7vFiwi6QcnRBlrVcXaf3y/IiptELJCD2P6fRQGPDWi9PkLaeNwajNgNEeirj+p6gXpyOk2Ko4QaDs
	2fHrwoTP3XLle9ogrWAjfVUgZ8aF/AcZWYOR8TRz8DNl8i4HdX7XXl+4uGv+YCL3D8x9nXD1I+nio
	DJaxU7QwbxfzZThpKRP59B78a8TfbR2DTv9pNopQtLoUnHk5tS/bfeMwbEcSvKGWEt5vZq5mmfsGG
	dVd79hbekg5cq4VGONOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07lY-0001mi-PU; Tue, 20 Aug 2019 17:17:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07lN-0001lu-4V
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 17:17:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so3603340pgi.6
 for <linux-mtd@lists.infradead.org>; Tue, 20 Aug 2019 10:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=EDt0UJKXRcPwJd/GSFivu9+2bFogN4Xmjzn8Zdb6RDA=;
 b=C9jWFeFH8mspfzoBVR1YpxfF5gzMzMJW973yMZXM8HOAnvtIvvpk5Cqq1qSLEevNLP
 S6Sss9JvoJBx4HmE5U63kdERu/PJJYTcYoDyFzjMVpMjwe0RuBLlVTahNsmMYOV5JsXe
 NTuFqxSlzzKdexo+GYsr19B9wjgVRBZWVmO5qO92iqwxGARWzH0A8h/SPVoY993mIwjv
 poGtMgnwLlKu4fkOov1N5Bw/Si/sd3igHllbjS6fRCQ0WhaR/3NJwWKGqd6zI2DIMeVH
 O+bMJ24tKcNC4zKJ6dmrKKBZ6UK4s1/CPT3N/ECfqGCQrC1TwtI346bISuFXLZPXVJdT
 Bs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=EDt0UJKXRcPwJd/GSFivu9+2bFogN4Xmjzn8Zdb6RDA=;
 b=R5eMAOW88vDf8FsxDB0GRJgnILd9SHYtrX9422bWkjiUgLhoKM5OrxinraiXrcGnZQ
 oDUfffDPawWn/LXY0Jrkz4cKSSWGZL5FAJqZkeD7cgEll+kVZCCAHWxjHtZ7kz2vJT4E
 ps4k/zUJdgR3ronZFfp0e1oK/5Bq0DNzlSkc+rbJP7kbktWeMmQSMpsTmrcIiOupJbkj
 Y2pnb/EpMVkNA+Ybt0TCFBRrnqySPOkr5FGUF1KjD3HNnGXftRVgbZOBpDFjgTkZRe2Z
 SrKeWk27K654lUYko2tMZ+gn6SqFUILkP8bb9IEBhWkyiSC+twgXQ0wRD+pjNKkSWpEC
 PXQA==
X-Gm-Message-State: APjAAAUe1J5YIna083W8HL2Zb+zG72dx2Kv3kqD/RGmA42Z0OpY4jaUj
 kP+j3SUPnuqsql88KAj/+Zz70YM95ys=
X-Google-Smtp-Source: APXvYqyllGdjZIH58/D0SsYp5G7tr3hQL0LRTEqpa+lLCupVP0cCrRsnCryaBI6HG5agaMjVfRVjoQ==
X-Received: by 2002:a17:90a:fe5:: with SMTP id 92mr1030831pjz.35.1566321459113; 
 Tue, 20 Aug 2019 10:17:39 -0700 (PDT)
Received: from eng-travisg.nic.com ([67.158.225.133])
 by smtp.gmail.com with ESMTPSA id y8sm28444110pfr.140.2019.08.20.10.17.38
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 10:17:38 -0700 (PDT)
From: Travis Griggs <travisgriggs@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Debian 10 boot problems with corrupted rw /var
Message-Id: <CFF08794-67A7-4383-92BC-61AD0D2D3661@gmail.com>
Date: Tue, 20 Aug 2019 10:17:37 -0700
To: linux-mtd@lists.infradead.org
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_101741_182072_E863CF7E 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (travisgriggs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SSBhcG9sb2dpemUgaWYgdGhpcyBxdWVzdGlvbiBpcyBhbiBpbnRydXNpb24gb24gdGhlIHNjb3Bl
IG9mIHRoaXMgbWFpbGluZyBsaXN0LiBTdGFja0V4Y2hhbmdlIGhhc27igJl0IHlpZWxkZWQgbXVj
aCBmcnVpdCBpbiBmdXJ0aGVyaW5nIG15IHVuZGVyc3RhbmRpbmcsIHNvIEnigJltIHRyeWluZyB0
aGlzIGxpc3QuIEnigJltIGEgbmVvcGh5dGUgaW4gdGhpcyBhcmVhLCBidXQgZWFnZXIgdG8gbGVh
cm4vdW5kZXJzdGFuZCBtb3JlLgoKCi0gLSAtIE15IFNldHVwClNpbmdsZSBib2FyZCBjb21wdXRl
ciAoPGh0dHBzOi8vd3d3LmVtdHJpb24uZGUvZW4vZGV0YWlsc19wcm9kdWN0cy1hY2Nlc3NvaXJl
cy9zYmMtc2FtYTVkMzYtNTYuaHRtbD4pCgpMaW51eCBLZXJuZWwgaXMgdmVyc2lvbiA0LjE4Ljgu
IEJvb3RhcmdzIGFyZToKICAgIAogICAgY29uc29sZT10dHlTMCwxMTUyMDAgZWFybHlwcmludGsg
cm9vdGZzdHlwZT11YmlmcyB1YmkubXRkPTMgcm9vdD11YmkwOnJvb3RmcyBybyByb290d2FpdAoK
VGhlIE9TIGlzIERlYmlhbiAxMC4KClRoZSBmaWxlc3lzdGVtIGlzIHNwbGl0IGludG8gYSByZWFk
LW9ubHkgcm9vdCBmaWxlIHN5c3RlbSBhbmQgYSByZWFkLXdyaXRlIC92YXIuIFRoZXkgYXJlIHNl
dCB1cCB1c2luZyB0aGUgZm9sbG93aW5nIGNvbW1hbmRzOgogCiAgICB1Ymlmb3JtYXQgL2Rldi9t
dGQzCiAgICB1YmlhdHRhY2ggLXAgL2Rldi9tdGQzCiAgICB1Ymlta3ZvbCAvZGV2L3ViaTAgLS1z
aXplPTIwME1pQiAtTiByb290ZnMgLW4gMQogICAgdWJpbWt2b2wgL2Rldi91YmkwIC1tIC1OIHZh
ciAtbiAyCgovZXRjL2ZzdGFiIGlzIG1vZGlmaWVkIHRvIGluY2x1ZGUgdGhlIGZvbGxvd2luZyBs
aW5lOgoKICAgIC9kZXYvdWJpMF8yIC92YXIgdWJpZnMgZGVmYXVsdHMsYXV0byAwIDAKCgotIC0g
LSBNeSBUZXN0CkknbSBkb2luZyBwb3dlciBjeWNsaW5nIHRlc3RzLiBJIHBvd2VyIHRoZSBib2Fy
ZCB1cCBmb3IgMyBtaW51dGVzLCBhbmQgdGhlbiBraWxsIHBvd2VyIGZvciAyIG1pbnV0ZXMsIGFu
ZCB0aGVuIHJlcnVuLiBVbnRpbCB0aGUgdGhpbmcgZGllcy4KCgotIC0gLSBNeSBSZXN1bHRzClJl
c3VsdHMKLS0tLQpJJ3ZlIGRvbmUgdGhpcyBhIG51bWJlciBvZiB0aW1lcy4gQWx3YXlzIHNvbWV3
aGVyZSBiZXR3ZWVuIDE2MDAgYW5kIDE4MDAgY3ljbGVzLCB0aGUgc3lzdGVtIGJlY29tZXMgc2Vt
aS11bmJvb3RhYmxlLiBJdCB3aWxsIGJvb3QgcGFydGlhbGx5LCBidXQgaXQgd2lsbCBub3QgZmlu
aXNoIHRoZSBib290IGJlY2F1c2UgY29ycnVwdGlvbiBhcHBlYXJzIHRvIGJlIGNvcnJ1cHRlZCBp
biB0aGUgL3ZhciBmaWxlIHN5c3RlbS4KCiAgICpzbmlwKgoKICAgIHViaTA6IGF0dGFjaGluZyBt
dGQzCiAgICByYW5kb206IGZhc3QgaW5pdCBkb25lCiAgICByYW5kb206IGNybmcgaW5pdCBkb25l
CiAgICB1YmkwOiBzY2FubmluZyBpcyBmaW5pc2hlZAogICAgdWJpMDogYXR0YWNoZWQgbXRkMyAo
bmFtZSAicm9vdGZzIiwgc2l6ZSA1MTAgTWlCKQogICAgdWJpMDogUEVCIHNpemU6IDEzMTA3MiBi
eXRlcyAoMTI4IEtpQiksIExFQiBzaXplOiAxMjY5NzYgYnl0ZXMKICAgIHViaTA6IG1pbi4vbWF4
LiBJL08gdW5pdCBzaXplczogMjA0OC8yMDQ4LCBzdWItcGFnZSBzaXplIDIwNDgKICAgIHViaTA6
IFZJRCBoZWFkZXIgb2Zmc2V0OiAyMDQ4IChhbGlnbmVkIDIwNDgpLCBkYXRhIG9mZnNldDogNDA5
NgogICAgdWJpMDogZ29vZCBQRUJzOiA0MDg0LCBiYWQgUEVCczogMCwgY29ycnVwdGVkIFBFQnM6
IDAKICAgIHViaTA6IHVzZXIgdm9sdW1lOiAyLCBpbnRlcm5hbCB2b2x1bWVzOiAxLCBtYXguIHZv
bHVtZXMgY291bnQ6IDEyOAogICAgdWJpMDogbWF4L21lYW4gZXJhc2UgY291bnRlcjogMTkvMywg
V0wgdGhyZXNob2xkOiA0MDk2LCBpbWFnZSBzZXF1ZW5jZSBudW1iZXI6IDE4MDMxNTI5CiAgICB1
YmkwOiBhdmFpbGFibGUgUEVCczogMCwgdG90YWwgcmVzZXJ2ZWQgUEVCczogNDA4NCwgUEVCcyBy
ZXNlcnZlZCBmb3IgYmFkIFBFQiBoYW5kbGluZzogODAKICAgIHViaTA6IGJhY2tncm91bmQgdGhy
ZWFkICJ1YmlfYmd0MGQiIHN0YXJ0ZWQsIFBJRCA2NDkKICAgIGF0OTFfcnRjIGZmZmZmZWIwLnJ0
Yzogc2V0dGluZyBzeXN0ZW0gY2xvY2sgdG8gMjAxOS0wOC0xOSAyMjo0Nzo0OSBVVEMgKDE1NjYy
NTQ4NjkpCiAgICBjZmc4MDIxMTogTG9hZGluZyBjb21waWxlZC1pbiBYLjUwOSBjZXJ0aWZpY2F0
ZXMgZm9yIHJlZ3VsYXRvcnkgZGF0YWJhc2UKICAgIGNmZzgwMjExOiBMb2FkZWQgWC41MDkgY2Vy
dCAnc2ZvcnNoZWU6IDAwYjI4ZGRmNDdhZWY5Y2VhNycKICAgIHBsYXRmb3JtIHJlZ3VsYXRvcnku
MDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIHJlZ3VsYXRvcnkuZGIgZmFpbGVkIHdpdGggZXJy
b3IgLTIKICAgIGNmZzgwMjExOiBmYWlsZWQgdG8gbG9hZCByZWd1bGF0b3J5LmRiCiAgICBVQklG
UyAodWJpMDoxKTogYmFja2dyb3VuZCB0aHJlYWQgInViaWZzX2JndDBfMSIgc3RhcnRlZCwgUElE
IDY2NAogICAgVUJJRlMgKHViaTA6MSk6IHJlY292ZXJ5IG5lZWRlZAogICAgVUJJRlMgKHViaTA6
MSk6IHJlY292ZXJ5IGNvbXBsZXRlZAogICAgVUJJRlMgKHViaTA6MSk6IFVCSUZTOiBtb3VudGVk
IFVCSSBkZXZpY2UgMCwgdm9sdW1lIDEsIG5hbWUgInJvb3RmcyIKICAgIFVCSUZTICh1YmkwOjEp
OiBMRUIgc2l6ZTogMTI2OTc2IGJ5dGVzICgxMjQgS2lCKSwgbWluLi9tYXguIEkvTyB1bml0IHNp
emVzOiAyMDQ4IGJ5dGVzLzIwNDggYnl0ZXMKICAgIFVCSUZTICh1YmkwOjEpOiBGUyBzaXplOiAy
MDgyNDA2NDAgYnl0ZXMgKDE5OCBNaUIsIDE2NDAgTEVCcyksIGpvdXJuYWwgc2l6ZSAxMDQxMjAz
MiBieXRlcyAoOSBNaUIsIDgyIExFQnMpCiAgICBVQklGUyAodWJpMDoxKTogcmVzZXJ2ZWQgZm9y
IHJvb3Q6IDQ5NTI2ODMgYnl0ZXMgKDQ4MzYgS2lCKQogICAgVUJJRlMgKHViaTA6MSk6IG1lZGlh
IGZvcm1hdDogdzQvcjAgKGxhdGVzdCBpcyB3NS9yMCksIFVVSUQgOEYwRUQwQTItRjQ1Ni00NzRG
LTg1OEUtQkJENzIzNTE2MkJDLCBzbWFsbCBMUFQgbW9kZWwKICAgIFZGUzogTW91bnRlZCByb290
ICh1YmlmcyBmaWxlc3lzdGVtKSBvbiBkZXZpY2UgMDoxMy4KICAgIGRldnRtcGZzOiBtb3VudGVk
CiAgICBGcmVlaW5nIHVudXNlZCBrZXJuZWwgbWVtb3J5OiAxMDI0SwogICAgc3lzdGVtZFsxXTog
RmFpbGVkIHRvIGZpbmQgbW9kdWxlICdhdXRvZnM0JwogICAgc3lzdGVtZFsxXTogc3lzdGVtZCAy
NDEgcnVubmluZyBpbiBzeXN0ZW0gbW9kZS4gKCtQQU0gK0FVRElUICtTRUxJTlVYICtJTUEgK0FQ
UEFSTU9SICtTTUFDSyArU1lTVklOSVQgK1VUTVAgK0xJQkNSWVBUU0VUVVAgK0dDUllQVCArR05V
VExTICtBQ0wgK1haICtMWjQgK1NFQ0NPTVAgK0JMS0lEICtFTEZVVElMUyArS01PRCAtSUROMiAr
SUROIC1QQ1JFMiBkZWZhdWx0LWhpZXJhcmNoeT1oeWJyaWQpCiAgICBzeXN0ZW1kWzFdOiBEZXRl
Y3RlZCBhcmNoaXRlY3R1cmUgYXJtLgogICAgCiAgICBXZWxjb21lIHRvIERlYmlhbiBHTlUvTGlu
dXggMTAgKGJ1c3RlcikhCiAgICAKICAgIHN5c3RlbWRbMV06IFNldCBob3N0bmFtZSB0byA8bmVs
c29uPi4KICAgIHN5c3RlbWRbMV06IEZpbGUgL2xpYi9zeXN0ZW1kL3N5c3RlbS9zeXN0ZW1kLWpv
dXJuYWxkLnNlcnZpY2U6MTIgY29uZmlndXJlcyBhbiBJUCBmaXJld2FsbCAoSVBBZGRyZXNzRGVu
eT1hbnkpLCBidXQgdGhlIGxvY2FsIHN5c3RlbSBkb2VzIG5vdCBzdXBwb3J0IEJQRi9jZ3JvdXAg
YmFzZWQgZmlyZXdhbGxpbmcuCiAgICBzeXN0ZW1kWzFdOiBQcm9jZWVkaW5nIFdJVEhPVVQgZmly
ZXdhbGxpbmcgaW4gZWZmZWN0ISAoVGhpcyB3YXJuaW5nIGlzIG9ubHkgc2hvd24gZm9yIHRoZSBm
aXJzdCBsb2FkZWQgdW5pdCB1c2luZyBJUCBmaXJld2FsbGluZy4pCiAgICBzeXN0ZW1kWzFdOiBM
aXN0ZW5pbmcgb24gaW5pdGN0bCBDb21wYXRpYmlsaXR5IE5hbWVkIFBpcGUuCiAgICBbICBPSyAg
XSBMaXN0ZW5pbmcgb24gaW5pdGN0bCBDb21wYXRpYmlsaXR5IE5hbWVkIFBpcGUuCiAgICBzeXN0
ZW1kWzFdOiBMaXN0ZW5pbmcgb24gSm91cm5hbCBTb2NrZXQuCiAgICBbICBPSyAgXSBMaXN0ZW5p
bmcgb24gSm91cm5hbCBTb2NrZXQuCiAgICBzeXN0ZW1kWzFdOiBDcmVhdGVkIHNsaWNlIFVzZXIg
YW5kIFNlc3Npb24gU2xpY2UuCiAgICBbICBPSyAgXSBDcmVhdGVkIHNsaWNlIFVzZXIgYW5kIFNl
c3Npb24gU2xpY2UuCiAgICBzeXN0ZW1kWzFdOiBMaXN0ZW5pbmcgb24gdWRldiBLZXJuZWwgU29j
a2V0LgogICAgWyAgT0sgIF0gTGlzdGVuaW5nIG9uIHVkZXYgS2VybmVsIFNvY2tldC4KICAgIHN5
c3RlbWRbMV06IFN0YXJ0ZWQgRm9yd2FyZCBQYXNzd29yZCBSZXF1ZXN0cyB0byBXYWxsIERpcmVj
dG9yeSBXYXRjaC4KICAgIFsgIE9LICBdIFN0YXJ0ZWQgRm9yd2FyZCBQYXNzd29yZCBS4oCmdWVz
dHMgdG8gV2FsbCBEaXJlY3RvcnkgV2F0Y2guCiAgICBbICBPSyAgXSBTdGFydGVkIERpc3BhdGNo
IFBhc3N3b3JkIOKApnRzIHRvIENvbnNvbGUgRGlyZWN0b3J5IFdhdGNoLgogICAgWyAgT0sgIF0g
UmVhY2hlZCB0YXJnZXQgUGF0aHMuCiAgICBbICBPSyAgXSBMaXN0ZW5pbmcgb24gTmV0d29yayBT
ZXJ2aWNlIE5ldGxpbmsgU29ja2V0LgogICAgWyAgT0sgIF0gUmVhY2hlZCB0YXJnZXQgTG9jYWwg
RW5jcnlwdGVkIFZvbHVtZXMuCiAgICBbICBPSyAgXSBDcmVhdGVkIHNsaWNlIHN5c3RlbS1nZXR0
eS5zbGljZS4KICAgIFsgIE9LICBdIExpc3RlbmluZyBvbiBTeXNsb2cgU29ja2V0LgogICAgWyAg
T0sgIF0gUmVhY2hlZCB0YXJnZXQgU2xpY2VzLgogICAgICAgICAgICAgU3RhcnRpbmcgTG9hZCBL
ZXJuZWwgTW9kdWxlcy4uLgogICAgICAgICAgICAgTW91bnRpbmcgS2VybmVsIERlYnVnIEZpbGUg
U3lzdGVtLi4uCiAgICBbICBPSyAgXSBSZWFjaGVkIHRhcmdldCBSZW1vdGUgRmlsZSBTeXN0ZW1z
LgogICAgWyAgT0sgIF0gTGlzdGVuaW5nIG9uIEpvdXJuYWwgU29ja2V0ICgvZGV2L2xvZykuCiAg
ICAgICAgICAgICBTdGFydGluZyBKb3VybmFsIFNlcnZpY2UuLi4KICAgIFsgIE9LICBdIExpc3Rl
bmluZyBvbiB1ZGV2IENvbnRyb2wgU29ja2V0LgogICAgICAgICAgICAgU3RhcnRpbmcgdWRldiBD
b2xkcGx1ZyBhbGwgRGV2aWNlcy4uLgogICAgICAgICAgICAgU3RhcnRpbmcgUmVtb3VudCBSb290
IGFuZCBLZXJuZWwgRmlsZSBTeXN0ZW1zLi4uCiAgICBbICBPSyAgXSBDcmVhdGVkIHNsaWNlIHN5
c3RlbS1zZXJpYWxceDJkZ2V0dHkuc2xpY2UuCiAgICBbICBPSyAgXSBSZWFjaGVkIHRhcmdldCBT
d2FwLgogICAgICAgICAgICAgTW91bnRpbmcgVGVtcG9yYXJ5IERpcmVjdG9yeSAoL3RtcCkuLi4K
ICAgIFsgIE9LICBdIFN0YXJ0ZWQgTG9hZCBLZXJuZWwgTW9kdWxlcy4KICAgIFsgIE9LICBdIE1v
dW50ZWQgS2VybmVsIERlYnVnIEZpbGUgU3lzdGVtLgogICAgWyAgT0sgIF0gTW91bnRlZCBUZW1w
b3JhcnkgRGlyZWN0b3J5ICgvdG1wKS4KICAgICAgICAgICAgIFN0YXJ0aW5nIEFwcGx5IEtlcm5l
bCBWYXJpYWJsZXMuLi4KICAgICAgICAgICAgIE1vdW50aW5nIEtlcm5lbCBDb25maWd1cmF0aW9u
IEZpbGUgU3lzdGVtLi4uCiAgICBbICBPSyAgXSBTdGFydGVkIFJlbW91bnQgUm9vdCBhbmQgS2Vy
bmVsIEZpbGUgU3lzdGVtcy4KICAgICAgICAgICAgIFN0YXJ0aW5nIENyZWF0ZSBTeXN0ZW0gVXNl
cnMuLi4KICAgIFsgIE9LICBdIE1vdW50ZWQgS2VybmVsIENvbmZpZ3VyYXRpb24gRmlsZSBTeXN0
ZW0uCiAgICBbICBPSyAgXSBTdGFydGVkIEFwcGx5IEtlcm5lbCBWYXJpYWJsZXMuCiAgICBbICBP
SyAgXSBTdGFydGVkIENyZWF0ZSBTeXN0ZW0gVXNlcnMuCiAgICAgICAgICAgICBTdGFydGluZyBD
cmVhdGUgU3RhdGljIERldmljZSBOb2RlcyBpbiAvZGV2Li4uCiAgICBbICBPSyAgXSBTdGFydGVk
IEpvdXJuYWwgU2VydmljZS4KICAgIFsgIE9LICBdIFN0YXJ0ZWQgQ3JlYXRlIFN0YXRpYyBEZXZp
Y2UgTm9kZXMgaW4gL2Rldi4KICAgIFsgIE9LICBdIFJlYWNoZWQgdGFyZ2V0IExvY2FsIEZpbGUg
U3lzdGVtcyAoUHJlKS4KICAgICAgICAgICAgIFN0YXJ0aW5nIHVkZXYgS2VybmVsIERldmljZSBN
YW5hZ2VyLi4uCiAgICBbICBPSyAgXSBTdGFydGVkIHVkZXYgS2VybmVsIERldmljZSBNYW5hZ2Vy
LgogICAgICAgICAgICAgU3RhcnRpbmcgTmV0d29yayBTZXJ2aWNlLi4uCiAgICBbICBPSyAgXSBT
dGFydGVkIHVkZXYgQ29sZHBsdWcgYWxsIERldmljZXMuCiAgICAgICAgICAgICBTdGFydGluZyBI
ZWxwZXIgdG8gc3luY2hyb25pemUgYm9vdCB1cCBmb3IgaWZ1cGRvd24uLi4KICAgIFsgIE9LICBd
IFN0YXJ0ZWQgSGVscGVyIHRvIHN5bmNocm9uaXplIGJvb3QgdXAgZm9yIGlmdXBkb3duLgogICAg
dWJpMCBlcnJvcjogdWJpX29wZW5fdm9sdW1lLnBhcnQuMDogY2Fubm90IG9wZW4gZGV2aWNlIDAs
IHZvbHVtZSAxLCBlcnJvciAtMTYKICAgIHViaTAgZXJyb3I6IHViaV9vcGVuX3ZvbHVtZS5wYXJ0
LjA6IGNhbm5vdCBvcGVuIGRldmljZSAwLCB2b2x1bWUgMSwgZXJyb3IgLTE2CiAgICBJUHY2OiBB
RERSQ09ORihORVRERVZfVVApOiBldGgxOiBsaW5rIGlzIG5vdCByZWFkeQogICAgQSBsaW5rIGNo
YW5nZSByZXF1ZXN0IGZhaWxlZCB3aXRoIHNvbWUgY2hhbmdlcyBjb21taXR0ZWQgYWxyZWFkeS4g
SW50ZXJmYWNlIGV0aDEgbWF5IGhhdmUgYmVlbiBsZWZ0IHdpdGggYW4gaW5jb25zaXN0ZW50IGNv
bmZpZ3VyYXRpb24sIHBsZWFzZSBjaGVjay4KICAgIFsgIE9LICBdIFN0YXJ0ZWQgTmV0d29yayBT
ZXJ2aWNlLgogICAgbWFjYiBmODAyYzAwMC5ldGhlcm5ldCBldGgxOiBsaW5rIHVwICgxMDAvRnVs
bCkKICAgIElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0UpOiBldGgxOiBsaW5rIGJlY29tZXMg
cmVhZHkKICAgIFsgIE9LICBdIEZvdW5kIGRldmljZSAvZGV2L3R0eVMwLgogICAgWyAgT0sgIF0g
Rm91bmQgZGV2aWNlIC9kZXYvdWJpMF8yLgogICAgICAgICAgICAgTW91bnRpbmcgL3Zhci4uLgog
ICAgVUJJRlMgKHViaTA6Mik6IGJhY2tncm91bmQgdGhyZWFkICJ1Ymlmc19iZ3QwXzIiIHN0YXJ0
ZWQsIFBJRCAxMTUyCiAgICBVQklGUyAodWJpMDoyKTogcmVjb3ZlcnkgbmVlZGVkCiAgICBVQklG
UyBlcnJvciAodWJpMDoyIHBpZCAxMTUwKTogdWJpZnNfZ2V0X3Bub2RlLnBhcnQuNDogZXJyb3Ig
LTIyIHJlYWRpbmcgcG5vZGUgYXQgOTo2MTU3NAogICAgKHBpZCAxMTUwKSBkdW1waW5nIHBub2Rl
OgogICAgICAgICAgICBhZGRyZXNzIGNlNTNjZTAwIHBhcmVudCBjZTUzY2U4MCBjbmV4dCAwCiAg
ICAgICAgICAgIGZsYWdzIDAgaWlwIDMgbGV2ZWwgMCBudW0gMAogICAgICAgICAgICAwOiBmcmVl
IDAgZGlydHkgMTEzMDgwIGZsYWdzIDEgbG51bSAwCiAgICAgICAgICAgIDE6IGZyZWUgMCBkaXJ0
eSAxMTUyNjQgZmxhZ3MgMSBsbnVtIDAKICAgICAgICAgICAgMjogZnJlZSAwIGRpcnR5IDExMzQw
OCBmbGFncyAxIGxudW0gMAogICAgICAgICAgICAzOiBmcmVlIDExMDU5MiBkaXJ0eSAxMzA4MjQg
ZmxhZ3MgMzQgbG51bSAwCiAgICBDUFU6IDAgUElEOiAxMTUwIENvbW06IG1vdW50IE5vdCB0YWlu
dGVkIDQuMTguOC1uZWxzb24gIzEKICAgIEhhcmR3YXJlIG5hbWU6IEF0bWVsIFNBTUE1CiAgICBb
PGMwMTBlMDk0Pl0gKHVud2luZF9iYWNrdHJhY2UpIGZyb20gWzxjMDEwYjVkYz5dIChzaG93X3N0
YWNrKzB4MTAvMHgxNCkKICAgIFs8YzAxMGI1ZGM+XSAoc2hvd19zdGFjaykgZnJvbSBbPGMwMmJm
NWM0Pl0gKHViaWZzX2dldF9wbm9kZS5wYXJ0LjQrMHgyMmMvMHgyOTApCiAgICBbPGMwMmJmNWM0
Pl0gKHViaWZzX2dldF9wbm9kZS5wYXJ0LjQpIGZyb20gWzxjMDJjMGZmMD5dICh1Ymlmc19scHRf
bG9va3VwX2RpcnR5KzB4MjJjLzB4MjljKQogICAgWzxjMDJjMGZmMD5dICh1Ymlmc19scHRfbG9v
a3VwX2RpcnR5KSBmcm9tIFs8YzAyYzQzNWM+XSAodWJpZnNfdXBkYXRlX29uZV9scCsweDM0LzB4
MTQwKQogICAgWzxjMDJjNDM1Yz5dICh1Ymlmc191cGRhdGVfb25lX2xwKSBmcm9tIFs8YzAyYjI3
N2M+XSAodWJpZnNfdG5jX2FkZCsweGQ4LzB4MTQ4KQogICAgWzxjMDJiMjc3Yz5dICh1Ymlmc190
bmNfYWRkKSBmcm9tIFs8YzAyYjVlNDg+XSAodWJpZnNfcmVwbGF5X2pvdXJuYWwrMHhlMTgvMHgx
MWVjKQogICAgWzxjMDJiNWU0OD5dICh1Ymlmc19yZXBsYXlfam91cm5hbCkgZnJvbSBbPGMwMmFi
NGE4Pl0gKHViaWZzX21vdW50KzB4MTExYy8weDE1MjApCiAgICBbPGMwMmFiNGE4Pl0gKHViaWZz
X21vdW50KSBmcm9tIFs8YzAxYmE3ODg+XSAobW91bnRfZnMrMHgxNC8weGE0KQogICAgWzxjMDFi
YTc4OD5dIChtb3VudF9mcykgZnJvbSBbPGMwMWQ0NWQ4Pl0gKHZmc19rZXJuX21vdW50LnBhcnQu
MysweDQ4LzB4ZTQpCiAgICBbPGMwMWQ0NWQ4Pl0gKHZmc19rZXJuX21vdW50LnBhcnQuMykgZnJv
bSBbPGMwMWQ2YTgwPl0gKGRvX21vdW50KzB4NTRjLzB4YmIwKQogICAgWzxjMDFkNmE4MD5dIChk
b19tb3VudCkgZnJvbSBbPGMwMWQ3NDUwPl0gKGtzeXNfbW91bnQrMHg4Yy8weGI0KQogICAgWzxj
MDFkNzQ1MD5dIChrc3lzX21vdW50KSBmcm9tIFs8YzAxMDEwMDA+XSAocmV0X2Zhc3Rfc3lzY2Fs
bCsweDAvMHg1NCkKICAgIEV4Y2VwdGlvbiBzdGFjaygweGNlNGNmZmE4IHRvIDB4Y2U0Y2ZmZjAp
CiAgICBmZmEwOiAgICAgICAgICAgICAgICAgICAwMDAwMDAwMCBiNmVmNDkwYyAwMDQ5M2M3MCAw
MDQ5M2M4MCAwMDQ5M2M2MCAwMDAwMDAwMAogICAgZmZjMDogMDAwMDAwMDAgYjZlZjQ5MGMgMDAw
MDAwMDAgMDAwMDAwMTUgMDA0OTNjNjAgYjZlZjUwZTggMDA0OTNjNjAgYjZlZjUwZTgKICAgIGZm
ZTA6IGI2ZWY0ZmM0IGJlY2RhYjMwIGI2ZWM0ODdmIGI2ZTIwZWFhCiAgICBVQklGUyBlcnJvciAo
dWJpMDoyIHBpZCAxMTUwKTogdWJpZnNfZ2V0X3Bub2RlLnBhcnQuNDogY2FsYyBudW06IDExNQog
ICAgVUJJRlMgZXJyb3IgKHViaTA6MiBwaWQgMTE1MCk6IHViaWZzX3VwZGF0ZV9vbmVfbHA6IGNh
bm5vdCB1cGRhdGUgcHJvcGVydGllcyBvZiBMRUIgNDc2LCBlcnJvciAtMjIKICAgIFVCSUZTICh1
YmkwOjIpOiBiYWNrZ3JvdW5kIHRocmVhZCAidWJpZnNfYmd0MF8yIiBzdG9wcwogICAgW0ZBSUxF
RF0gRmFpbGVkIHRvIG1vdW50IC92YXIuCiAgICBTZWUgJ3N5c3RlbWN0bCBzdGF0dXMgdmFyLm1v
dW50JyBmb3IgZGV0YWlscy4KICAgIFtERVBFTkRdIERlcGVuZGVuY3kgZmFpbGVkIGZvciBELUJ1
cyBTeXN0ZW0gTWVzc2FnZSBCdXMgU29ja2V0LgogICAgW0RFUEVORF0gRGVwZW5kZW5jeSBmYWls
ZWQgZm9yIExvZ2luIFNlcnZpY2UuCiAgICBbREVQRU5EXSBEZXBlbmRlbmN5IGZhaWxlZCBmb3Ig
RC1CdXMgU3lzdGVtIE1lc3NhZ2UgQnVzLgogICAgW0RFUEVORF0gRGVwZW5kZW5jeSBmYWlsZWQg
Zm9yIExvYWQvU2F2ZSBSYW5kb20gU2VlZC4KICAgIFtERVBFTkRdIERlcGVuZGVuY3kgZmFpbGVk
IGZvciBVcGRh4oCmYWJvdXQgU3lzdGVtIFJ1bmxldmVsIENoYW5nZXMuCiAgICBbREVQRU5EXSBE
ZXBlbmRlbmN5IGZhaWxlZCBmb3IgTmV0d29yayBUaW1lIFN5bmNocm9uaXphdGlvbi4KICAgIFtE
RVBFTkRdIERlcGVuZGVuY3kgZmFpbGVkIGZvciBVcGRh4oCmTVAgYWJvdXQgU3lzdGVtIEJvb3Qv
U2h1dGRvd24uCiAgICBbREVQRU5EXSBEZXBlbmRlbmN5IGZhaWxlZCBmb3IgRGFpbHkgcm90YXRp
b24gb2YgbG9nIGZpbGVzLgogICAgW0RFUEVORF0gRGVwZW5kZW5jeSBmYWlsZWQgZm9yIERhaWx5
IGFwdCBkb3dubG9hZCBhY3Rpdml0aWVzLgogICAgW0RFUEVORF0gRGVwZW5kZW5jeSBmYWlsZWQg
Zm9yIExvY2FsIEZpbGUgU3lzdGVtcy4KICAgIFtERVBFTkRdIERlcGVuZGVuY3kgZmFpbGVkIGZv
ciBGbHVz4oCmSm91cm5hbCB0byBQZXJzaXN0ZW50IFN0b3JhZ2UuCiAgICBbREVQRU5EXSBEZXBl
bmRlbmN5IGZhaWxlZCBmb3IgTmV0d29yayBOYW1lIFJlc29sdXRpb24uCiAgICBbICBPSyAgXSBS
ZWFjaGVkIHRhcmdldCBIb3N0IGFuZCBOZXR3b3JrIE5hbWUgTG9va3Vwcy4KICAgICAgICAgICAg
IFN0YXJ0aW5nIFJhaXNlIG5ldHdvcmsgaW50ZXJmYWNlcy4uLgogICAgWyAgT0sgIF0gU3RvcHBl
ZCBGb3J3YXJkIFBhc3N3b3JkIFLigKZ1ZXN0cyB0byBXYWxsIERpcmVjdG9yeSBXYXRjaC4KICAg
IFsgIE9LICBdIFN0b3BwZWQgRGlzcGF0Y2ggUGFzc3dvcmQg4oCmdHMgdG8gQ29uc29sZSBEaXJl
Y3RvcnkgV2F0Y2guCiAgICBbICBPSyAgXSBSZWFjaGVkIHRhcmdldCBMb2dpbiBQcm9tcHRzLgog
ICAgWyAgT0sgIF0gQ2xvc2VkIFN5c2xvZyBTb2NrZXQuCiAgICBbICBPSyAgXSBTdGFydGVkIEVt
ZXJnZW5jeSBTaGVsbC4KICAgIFsgIE9LICBdIFJlYWNoZWQgdGFyZ2V0IEVtZXJnZW5jeSBNb2Rl
LgogICAgWyAgT0sgIF0gUmVhY2hlZCB0YXJnZXQgVGltZXJzLgogICAgWyAgT0sgIF0gUmVhY2hl
ZCB0YXJnZXQgU3lzdGVtIFRpbWUgU3luY2hyb25pemVkLgogICAgICAgICAgICAgU3RhcnRpbmcg
Q3JlYXRlIFZvbGF0aWxlIEZpbGVzIGFuZCBEaXJlY3Rvcmllcy4uLgogICAgWyAgT0sgIF0gUmVh
Y2hlZCB0YXJnZXQgU29ja2V0cy4KICAgIFsgIE9LICBdIFN0YXJ0ZWQgUmFpc2UgbmV0d29yayBp
bnRlcmZhY2VzLgogICAgWyAgT0sgIF0gUmVhY2hlZCB0YXJnZXQgTmV0d29yay4KICAgIFsgIE9L
ICBdIFN0YXJ0ZWQgQ3JlYXRlIFZvbGF0aWxlIEZpbGVzIGFuZCBEaXJlY3Rvcmllcy4KICAgIFlv
dSBhcmUgaW4gZW1lcmdlbmN5IG1vZGUuIEFmdGVyIGxvZ2dpbmcgaW4sIHR5cGUgImpvdXJuYWxj
dGwgLXhiIiB0byB2aWV3CiAgICBzeXN0ZW0gbG9ncywgInN5c3RlbWN0bCByZWJvb3QiIHRvIHJl
Ym9vdCwgInN5c3RlbWN0bCBkZWZhdWx0IiBvciAiZXhpdCIKICAgIHRvIGJvb3QgaW50byBkZWZh
dWx0IG1vZGUuCiAgICAKICAgIENhbm5vdCBvcGVuIGFjY2VzcyB0byBjb25zb2xlLCB0aGUgcm9v
dCBhY2NvdW50IGlzIGxvY2tlZC4KICAgIFNlZSBzdWxvZ2luKDgpIG1hbiBwYWdlIGZvciBtb3Jl
IGRldGFpbHMuCiAgICAKICAgIFByZXNzIEVudGVyIHRvIGNvbnRpbnVlLgoKCi0gLSAtIE15IFF1
ZXN0aW9ucwoxLiBIb3cgY2FuIEkgZ2V0IHRvIHRoZSBib3R0b20gb2Ygd2hhdC93aHkgbXkgL3Zh
ciBmaWxlIHN5c3RlbSBpcyBnZXR0aW5nIGNvcnJ1cHRlZD8KMi4gSSBhY2NlcHQgdGhhdCBVQklG
UyBkb2Vzbid0IHByb3RlY3QgbWUgZnJvbSBwb3dlci1jeWNsZSBjb3JydXB0aW9uIGlzc3VlcyAx
MDAlLiBJIGhhdmUgYmVlbiBsZWFkIHRvIGJlbGlldmUgaXQgc2ltcGx5IG1ha2VzIGl0IG1vcmUg
cm9idXN0IGluIHRoZSBwcmVzZW5jZSBvZiBwb3dlciBjeWNsZSBldmVudHMuIEJ1dCB3aHkgZG9l
cyBpdCBhbHdheXMgZmFpbCBiZXR3ZWVuIDE2MDAgYW5kIDE4MDAgaXRlcmF0aW9ucz8gSWYgaXQg
d2FzIHRydWx5IHJhbmRvbSwgSSdkIGV4cGVjdCBpdCB0byBmYWlsIGF0IHJhbmRvbSBwb3dlciBj
eWNsZSBldmVudHMuIEl0J3MgbGlrZSBzb21lIGNvdW50ZXIgaXMgd2VhcmluZyBvdXQgdGhvdWdo
LgozLiBUaGUgYXNzdW1wdGlvbiBJJ20gd29ya2luZyBvbiBoZXJlIGlzIHRoYXQgaGF2aW5nIHRo
ZSBtYWpvcml0eSBvZiB0aGUgc3lzdGVtIGJlIHJlYWQtb25seSB3b3VsZCBpbmNyZWFzZSB0aGUg
cm9idXN0bmVzcyBvZiB0aGUgc3lzdGVtIChsZXNzIGJyaWNrIGFibGUpLiBCdXQgaXQgc2VlbXMg
aXQncyBvbmx5IG1hZGUgaXQgc28gaXQgYm9vdHMgZnVydGhlciwgYnV0IHVsdGltYXRlbHkgc3Rp
bGwgYnJpY2tzLiBXaGF0IGNhbiBJIGFkZCBpdCB0byBtYWtlIHRoZSByby9ydyBzcGxpdCBhY3R1
YWxseSBtZWFuaW5nZnVsPwo0LiBJdOKAmXMgYmVlbiBzdWdnZXN0ZWQgdGhhdCBJIHNob3VsZCBw
bGFjZSB0aGUgdHdvIHNlcGFyYXRlIHZvbHVtZXMgKHJvb3RmcyBhbmQgL3ZhciBvbiBzZXBhcmF0
ZSBtdGRzKS4gSeKAmW0gZ29pbmcgdG8gZXhwZXJpbWVudCB3aXRoIHRoYXQsIGJ1dCB3aWxsIGl0
IG1ha2UgYSBkaWZmZXJlbmNlPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBEA72FCB
	for <lists+linux-mtd@lfdr.de>; Wed, 24 Jul 2019 15:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HQp6X/TTGHl5Pos/TxjRCyAa9Imb2SnwzDEzBTL5CWE=; b=t6v
	fawO7Fws0H5uqxW8OLOCkOa/K5NUCQiMyMJYT/pQr+xsUlp1jO/QGYKwcvUgrFgA/W0gEh5M3l+K4
	8KhUGzRFqdH7BWmb8iWTP7hlfX8UtvBh5X/2KRkFt6N2InxjqykzyvUHe5tR7Q0H5/2ytQhOcDy99
	L2aa7L3+E1K8BWk5LF29eE7Fqtz6bQULWatxY+KoCk8DM/hlocP1bQ6V7hVVTDLhfkeTMLkZyshM5
	7M62+3XXrMaiTD8x8XG0a+RaO35qjVRBUJ/JYZ6Rns82uZRySw+Er1FQ0EAQCjpp137qeBd+8Poca
	1Qgw0Oxqc6pR0LL5F3MybchX1RQSywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHFI-0003yc-40; Wed, 24 Jul 2019 13:23:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHF9-0003y6-PY
 for linux-mtd@lists.infradead.org; Wed, 24 Jul 2019 13:23:45 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so31961211lfb.9
 for <linux-mtd@lists.infradead.org>; Wed, 24 Jul 2019 06:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ZLLqDcgpNV8kfRzVSVxys8vLdFdOBGPgOHBMI1Q4xo8=;
 b=s0m8lyBNoRoNoAS1zoWIqo61SI7WmrKfZVqdOFzs+Cj2bjTnX9eDHpv8F++o4Tae8I
 hidvQFsH02v62QslS5W0rNog556TXoWcU8fiValJmkpoalbjoW1+x4S31jaei7d186e3
 hgTblSBuI5kPP9dYbb+cRegB6CACoQrpVsGPVByihpM2yUGKl2Ik7LzQ+TbpYbsSnj4Y
 rT/A3OTO1X++PJ7SvmQzu3EFQHFLBSK3gkaWb+flFM7IHfIGURuVJos2akCzTdjSE4Z/
 vJOQnrq9osjTSdwT2X/eVcZVfMgWzgQaEpLChx5m6+z4a+C+XIGbM5YDVA4IwQ23DGdL
 mu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=ZLLqDcgpNV8kfRzVSVxys8vLdFdOBGPgOHBMI1Q4xo8=;
 b=MBk8/J3BhxGWkE6UwM4ombTGpKUK478Mr7HWlSUmkP8/SMfh5uEmVv8k6yEbzaOJuz
 Xp0636imHJdS+kucyJE+1Vk8aH2xofOKyumuXxnuoLPqLNQKQoeWqg1WzWR/SNjBmFhc
 VBrQRNjYE4ytdInEn+NhzPAggXcp3vYtE+ta6rhLaIii72yeYq0Z4G1No+M6UfK+sxpX
 BZklpPmrS9MH/32zQvX/NvtGQ9nSXMFu4WESrRk4hkilbcaNs0qiHvchLg6/R9IaM6d8
 VMrqdRzY5xAq4u0RkQWLDlJbk4lKzRwXxt89720vL8OFXauI8uIpmaqL+IqiMX2e4yyz
 y3Tg==
X-Gm-Message-State: APjAAAU4RihMcAPSHWcdzErk8QvDm60ggLJh2ze1Ch4agMZTVjJTu9AV
 +bCL23YOWLbvacu9q6sOgaHzSj2lBJ8kaR/pCNg=
X-Google-Smtp-Source: APXvYqwIXFcLbwx7S4i4e8cLVsnHWjq8P/6zWTiN+Nxhs3JfHEEZ1xTsESpfcxCvVnfwtRapdFVpVdXtN7PmYr2geow=
X-Received: by 2002:a19:7401:: with SMTP id v1mr37625720lfe.155.1563974621621; 
 Wed, 24 Jul 2019 06:23:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:7a13:0:0:0:0:0 with HTTP; Wed, 24 Jul 2019 06:23:41
 -0700 (PDT)
From: Fred <barrwillettefred@gmail.com>
Date: Wed, 24 Jul 2019 06:23:41 -0700
X-Google-Sender-Auth: hIiP-uWrM7RLYSKYTbKCmUv6Ykc
Message-ID: <CAGzsiFoLLU6uS1yc=JA5wHR5V1T+s_=BoDW_C6ZY_3XBNirgXw@mail.gmail.com>
Subject: Urgent.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_062343_855948_9E11B3DC 
X-CRM114-Status: UNSURE (  -2.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrsannemperier[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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

TWEgY2jDqXJpZQpTYWx1dGF0aW9ucyEgSidlc3DDqHJlIHF1ZSB0b3V0IHZhIGJpZW4gcG91ciB2
b3VzIGV0IHZvdHJlIGZhbWlsbGUuCmonYWkgZXUgamUgdm91bGFpcyB0J8OpY3JpcmUgcGx1cyB0
w7R0IG1haXMgcGFyIGNvbmNlbnRyYXRpb24sIGplIGRldmFpcwpmaW5pciBhdmVjIHRvdXQgbW9u
IEVuZGVhdm9yIGljaSwgaifDqXRhaXMgZG9uYyB0csOocyBvY2N1cMOpLgoKSifDqWNyaXMgZW4g
Y2UgcXVpIGNvbmNlcm5lIG5vcyBhdmFudGFnZXMgbXV0dWVscywgYXByw6hzIHRvdXQgZGl0LCBq
ZQpzdWlzIGZpbmFsZW1lbnQgc29ydGkgdmljdG9yaWV1c2VtZW50LiBJbCBlc3QgbWFsaGV1cmV1
eCBxdWUgdm91cwpwZXJkZXogbGEgY29uZmlhbmNlIHF1ZSBqJ2F2YWlzIHByw6ljw6lkZW1tZW50
IHBvc8OpZSBzdXIgdm91cy4gQmllbiBxdWUsCmVuIGZhaXQsIGplIGNvbXByZW5kcyB0b3V0IGNl
IHF1ZSB2b3VzIGF2ZXogdsOpY3UuIENlcGVuZGFudCwgamUgc3VpcwpyYXZpIGRlIHZvdXMgaW5m
b3JtZXIgZGUgY2V0dGUgdHJhbnNhY3Rpb24gZXQgZmluYWxlbWVudCBkZSBs4oCZYWlkZSBkdQpE
ciBKb2huIEhhcnVuYSwgcXVpIHPigJllc3QgcmFwaWRlbWVudCBhaWTDqS4gQmllbiBxdWUgYmVh
dWNvdXAgZCdhcmdlbnQKYWl0IMOpdMOpIGTDqXBlbnPDqSBwb3VyIGwnYWNow6h2ZW1lbnQgZGUg
Y2V0dGUgdHJhbnNhY3Rpb24sIG1haXMgcXVlIGxlCnN1Y2PDqHMgYWl0IGZpbmFsZW1lbnQgw6l0
w6kgb2J0ZW51LCBqZSBzdWlzIGFjdHVlbGxlbWVudCBkYW5zIHVuIHByb2pldApldCB1biBpbnZl
c3Rpc3NlbWVudCwgamUgcGFycyBkb25jIHBvdXIgbCdJbmRlIGF1am91cmQnaHVpLCBldCBlbgpy
YWlzb24gTW9uIGVtcGxvaSBkdSB0ZW1wcyBwcm9ncmFtbcOpLCBqZSBzZXJhaSBwZXV0LcOqdHJl
IHBhcyBkZSByZXRvdXIKYXZhbnQgSnVpbiAyMDIwIHBhcmNlIHF1ZSBqZSB2b3lhZ2VyYWlzIGQn
SW5kZSBlbiBBbmdsZXRlcnJlLgoKVG91dCBkJ2Fib3JkLCBqZSB2b3VkcmFpcyByZW1lcmNpZXIg
bGUgU2VpZ25ldXIgZGUgbm91cyBhdm9pciBwcm9taXMKcXVlIGNldXggcXVpIG9udCBtaXMgbGV1
ciBjb25maWFuY2UgZW4gZXV4IG4nYXVyYWllbnQgamFtYWlzIGhvbnRlLiBJbAplc3QgdnJhaW1l
bnQgbGUgRGlldSBxdWkgcsOpcG9uZCDDoCBsYSBwcmnDqHJlLiBTZWNvbmQsIGplIHZldXggc2Fp
c2lyIGNlCm1veWVuIGQnYXBwcsOpY2llciB0b3V0ZXMgdm9zIGNvbnRyaWJ1dGlvbnMgZXQgbGUg
dGVtcHMgcGFzc8OpIGRhbnMgbGUKY291cnMgZGUgY2V0dGUgdHJhbnNhY3Rpb24uCgpNZXJjaSBi
ZWF1Y291cCBldCBib24gRGlldSB2b3VzIGLDqW5pc3NleiBkJ3V0aWxpc2VyIHZvcyBub21zIGV0
CmluZm9ybWF0aW9ucyBwb3VyIHLDqWNsYW1lciBsZXMgZm9uZHMuIMOAIGxhIGx1bWnDqHJlIGRl
IGNlY2ksIHVuCmFycmFuZ2VtZW50IGEgw6l0w6kgY29uY2x1IMOgIGxhIHLDqXbDqXJlbmQgTWFy
dGhpbnMgTWFsaWssIHBvdXIgdm91cwplbnZveWVyIHVuIHRvdGFsIGRlIDU1MCAwMDAsMDAgJCBV
UyB1bmlxdWVtZW50IHBhciBjYXJ0ZSBkZSB2aXNhCkd1aWNoZXQgYXV0b21hdGlxdWUsIHJlY29u
bmFpc3NhbmNlIHBvdXIgdG91dGVzIGxlcyBjb250cmlidXRpb25zIHF1ZQp2b3VzIGF2ZXogZmFp
dCBjZXR0ZSB0cmFuc2FjdGlvbiBkYW5zIGxlIHBhc3PDqS4gVmV1aWxsZXogYWNjZXB0ZXIgY2Vs
YQphdmVjIGJvbiBlc3ByaXQuCgpDb250YWN0ZXogbGUgcsOpdi4gTWFydGhpbnMgTWFsaWNrIChF
LW1haWw6IHJldm1hcnRoaW5zX21AaG90bWFpbC5mcikKSW5kaXF1ZXotbHVpIG/DuSB2b3VzIGVu
dm95ZXogbGEgY2FydGUgZGUgdmlzYSBBVE0gb3UsIG1pZXV4IGVuY29yZSwKdm91cyBwb3V2ZXog
bHVpIGVudm95ZXIgdW4gY291cnJpZXIgw6lsZWN0cm9uaXF1ZSBhZmluIGRlIGx1aSBwZXJtZXR0
cmUKZGUgcHJlbmRyZSBkZXMgbWVzdXJlcyBxdWkgcydpbXBvc2VudC4KClZvdXMgbmUgcG91dmV6
IHBhcyDDqnRyZSBhZmZlY3TDqSDDoCB1biBtZXNzYWdlIHNpIHZvdXMgw6p0ZXMgdHLDqHMgb2Nj
dXDDqQpwYXIgbW9uIHByb2pldCwgc2kgdm91cyBsZSBzb3VoYWl0ZXosIHNpIHZvdXMgbGUgc291
aGFpdGV6LgoKSmUgdm91cyB0w6lsw6lwaG9uZXJhaSBkZSBsJ0luZGUgZMOocyBxdWUgcG9zc2li
bGUuCgpNZWlsbGV1cmVzIHNhbHV0YXRpb25zCgpGcmVkIFdpbGxldHRlIEVzcS4KTMOpZ2lzdGUu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=

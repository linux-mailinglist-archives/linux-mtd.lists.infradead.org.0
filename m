Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80418AA48
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 02:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hCKYb5nqtKXBDlKTU0prtYl2KK6l62iuJ9C+6eSY+H0=; b=IhTtYxw1iP4Ig+
	+BZPBJS7pwTVnXfZO//eRgn9bhp3Fluw4rJXKsumLSLcBinsFZZ0gNts+vQ5zSy0WYLnBVXTFNJLM
	CFufrKJ5lhws4YqzIoqYTnLU+j/HN59FwgIYllcNQI42KZOq+xJbyK9i45uigsikxejp5qaG8+5NQ
	lUV8NMcckzxBCMbljDJClMmKA7knHQXd0TYuLvdPkj/9Kln8rQB6d2exib8UKCKZzEDPmQSmH/Xg4
	fTyQ/L3cQLoMmSuNM1vR7IKN1Qws23cb1vazzu7c3Xq75M1iEQvae2nTxNbXS5peCVETkhcX0eYH1
	M4lkvIc31fw0cEdEBR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEjtj-0007bM-Vk; Thu, 19 Mar 2020 01:23:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEjtd-0007an-HB
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 01:22:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id a2so568056ljk.6
 for <linux-mtd@lists.infradead.org>; Wed, 18 Mar 2020 18:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UoGnblk69QBXt2I+8r8bRTFMis3AFzpN/VWgP+fkqhE=;
 b=POb2QIX86n5tJpxy9WGggN3pefbv2FR8HNgTdkyCHZqE35WSFvGVrlTmIZTzfcmJAn
 TUqAkeD1V9zW42BJUiOOJmDEPVgUGG1Xp8Kif70KYMNasgIUDANYOCaiDl48gLDaWFFD
 zG02DLZzd9VkAkjAFAhvqFw5W78C8Ny8RIhK4APPUcubOE7BdbICSSYrL2tb0+r4erRt
 Xt6v2wbGGM+kEHADrEYj2Go96iQGoWCC0dwcFfs8mgtlww+doaioQ9I2HmIaafpQ417P
 uX5pOAwPk++KgCI7CLMm91XVEl5zggST1xr7o5W6jhiMBAxIz49q1apABwU4P6taAqtK
 Wcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UoGnblk69QBXt2I+8r8bRTFMis3AFzpN/VWgP+fkqhE=;
 b=TYFk/+8b4vIVFkucF2XSarKJH5BETtnETh52avuofS8uEJEmI90oxUSZv7MUVb6YSV
 /oGfdKRuwdSWNT1izyJKoLm6IV8VRAjO2rmwZBImfzTJhTC4dcZaV43JIRVCz7DT9SkC
 kIpPKz+waW+dSQ597saSC+V3YveSIrlzrfWfXUn9Y1+CursQxRRhB3BLJsFKRi22nApW
 BN3alwbGQYM7U3pDV+ognFDeqKJFVjNNgHOvbTQQYtmMCJ95iw2vZ/P0PwtRHT8wA6FC
 tnhv1BNe5q6MmtGVV/px1BgxaoI0eAfkynFhVEUEnXnTXXnmVT+dswPheUgQC7yk+MGG
 PODw==
X-Gm-Message-State: ANhLgQ1vVu+drSOOoqCPgtM4U7/iHm+GiwINZqg4jkcn8eeHKkgn3vMl
 yvMC3vykTX4Gj+I3BnYA7UNilOjCdF1LJ8E5GSg=
X-Google-Smtp-Source: ADFU+vvwUABwl1C1FmCyLddqpT9+IA3MhKKgX876B0iLClMi/qKCrEtNeuTCJg5fXcBfEIVcxXJOd1Vbvb1jue6dUYY=
X-Received: by 2002:a05:651c:1190:: with SMTP id
 w16mr453988ljo.119.1584580970874; 
 Wed, 18 Mar 2020 18:22:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6001:0:0:0:0:0 with HTTP; Wed, 18 Mar 2020 18:22:50
 -0700 (PDT)
From: pas David <mrsdorathydyer@gmail.com>
Date: Thu, 19 Mar 2020 01:22:50 +0000
Message-ID: <CAGNDGiGC0=7ow3WGZ71TKdAcAdMszw1Gzbw34eyckzpbd6T09A@mail.gmail.com>
Subject: ATM CARD
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_182253_599065_FEA5E3B5 
X-CRM114-Status: UNSURE (  -1.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrsdorathydyer[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
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
Reply-To: davidekennadhl@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhpcyBpcyBESEwgY291cmllciBEZWxpdmVyeSBDb21wYW55IG9mIExvbWUgVG9nbywgdGhlIG1h
bmFnZW1lbnQgb2YKdGhpcyDCoGNvbXBhbnksIHdpc2hlcyB0byBpbmZvcm0geW91IHRoYXQsIHdl
ICByZWNlaXZlZCBhIHBhcmNlbApjb250YWluaW5nIGFuIEFUTSBNYXN0ZXIKCkNhcmQgdmFsdWVk
ICQ3LjUgTWlsbGlvbiBVU0Qgd2l0aCB0aGUgdml0YWwgUElOIG9uIGl0LCBmb3Igc2FmZXR5CmRl
bGl2ZXJ5IHRvIHlvdXIgcmVzaWRlbnRpYWwgYWRkcmVzcyBpbiB5b3VyIGNvdW50cnkuCgpUaGlz
IHBhcmNlbCB3YXMgYnJvdWdodCB0byB1cyB0aGlzIG1vcm5pbmcgYnkgdGhlIEFUTSBDYXJkIHBh
eW1lbnQKb2ZmaWNlIMKgTG9tZSBUb2dvLCBwbGVhc2UgcmVjb25maXJtIHRoZSBiZWxvdyAgaW5m
b3JtYXRpb24sIHRvIGF2b2lkCmRlbGl2ZXJ5IG9mIMKgeW91ciBBVE0KCk1hc3RlciBDYXJkIHRv
IHdyb25nIGhhbmQuCgoxKSBZb3VyIEZ1bGwgTmFtZToKMikgQWRkcmVzcywgQ2l0eSwgU3RhdGUg
QW5kIENvdW50cnk6CjMpIFBlcnNvbmFsIENlbGwgUGhvbmUsIEZheCBBbmQgTW9iaWxlOgo0KSBD
b21wYW55IE5hbWUgKElmIEFueSkgUG9zaXRpb24gQW5kIEFkZHJlc3M6CjUpIE9jY3VwYXRpb24s
IEFnZSBBbmQgTWFyaXRhbCBTdGF0dXM6CjYpIENvcHkgT2YgWW91ciBJbnQnbCBQYXNzcG9ydC9E
cml2ZXJzIExpY2VuY2U6CgpTZW5kIHlvdXIgwqByZXF1aXJlIGluZm9ybWF0aW9uIHZpYSBFbWFp
bCBBZGRyZXNzIChkYXZpZGVrZW5uYWRobEBnbWFpbC5jb20pCgpXZSB3aWxsIHJlZ2lzdGVyIHlv
dXIgcGFja2FnZSBhbmQgc2VuZCB5b3UgdGhlIHRyYWNraW5nIG51bWJlcnMgYmVmb3JlCndlIMKg
cHJvY2VlZCBmb3Igc2FmZXR5IGRlbGl2ZXJ5IG9mIHlvdXIgIHBhY2thZ2UgYXMgc29vbiBhcyB5
b3UKcmVjb25maXJtIHRoZSByZXF1aXJlZAoKaW5mb3JtYXRpb24gZm9yIHNhZmV0eSBkZWxpdmVy
eS5TZW5kIHlvdXIgwqByZXF1aXJlIGluZm9ybWF0aW9uIHZpYQpFbWFpbCBBZGRyZXNzIChkYXZp
ZGVrZW5uYWRobEBnbWFpbC5jb20pCgpESEwgaXMgb25lIG9mIHRoZSB3b3JsZCdzIGdyZWF0IHN1
Y2Nlc3Mgc3RvcmllcywgdGhlIHN0YXJ0LXVwIHRoYXQKcmV2b2x1dGlvbml6ZWQgdGhlIGRlbGl2
ZXJ5IG9mIHBhY2thZ2VzIGFuZCBpbmZvcm1hdGlvbi4gSW4gdGhlIHBhc3QKMzN5ZWFycywgd2Un
dmUKCmdyb3duIHVwIGFuZCBncm93biBpbnRvIGEgZGl2ZXJzZSBmYW1pbHkgb2YgY29tcGFuaWVz
IGFzIERITCDCoHRoYXQncwpiaWdnZXIsIHN0cm9uZ2VyLCBiZXR0ZXIgdGhhbiBldmVyLgoKWW91
cnMgRmFpdGhmdWxseS4KUGFzdG9yIERhdmlkLgpCZC4gZHUgMTMgSmFudmllciwgSW1tLiBOwrAx
NTc4Ck55w6lrb25ha3Bvw6kgLSBCUCA0MjAyCkxvbcOpIC0gVG9nbwpUZWwgOigrMjI4KSA5NjEz
MjgzNwpTaXRlIDp3d3cuZGhsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K

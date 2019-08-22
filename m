Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F4F98AF6
	for <lists+linux-mtd@lfdr.de>; Thu, 22 Aug 2019 07:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZhWYUfVkOIoF2kfTuX9ayFxTZHwu5dCYeiabKroR9jg=; b=ExrsYqQ8f7cNWs
	SplIWG5nF6AtH0FDF/vyxJDYKIG5wXsY+6CuLLsT6dIFHRtyfqL5j5VG6ubJa/0c5fECm1VWgVbsS
	o/8EuVCTv18LWeJovfh2aKyOBSDf9YJ2eNMt9n6hkhHwZeqvjvhW+Qc1ufyJSYXXlxvVP5DLG9yGi
	CxlR1ARK2JKFfza8+I2ZhElnhjQAgd9cqniLh9DAe3i1vHmCOVC0EmYIcDjaluPBPTxBG6NC+/T9+
	RfG4tgT1ItmIBp5a3tBmZI/4yU/XJEfISoaXIXXX/UWhKrputaChRKR6PYOaDuCnSQzGGcjC1uuJY
	5/JMCSBeX9bYkMzdH8Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0g4q-0005K3-2w; Thu, 22 Aug 2019 05:56:04 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g4Z-0005Jc-8p
 for linux-mtd@lists.infradead.org; Thu, 22 Aug 2019 05:55:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id a30so3574254lfk.12
 for <linux-mtd@lists.infradead.org>; Wed, 21 Aug 2019 22:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=EcZMxX6qzEdvhPrN3eMhi0OFnEzktkw9ICUQt2FBRcs=;
 b=Z+6JVnaoCnJdcodi7xRqVMLpj6usxLRUvZY9oJAcgKHiOdCLZmYKiW+2WkrCZKuQJF
 j1W6mplvnSF6lV4qfWh4Tocgaw64tUo86JValwvIKqvitAgJiIBANrTYqnbuVK7dI9lr
 8JqdY19lpLrbopJV/X4Y0/G1FwTNr6HzdpEtcZCovOtfay56r18qrD1bgBbmlyOXgO/M
 a9vkCFTq5kVjxfgXsMnVKWZCp9sk1/ivIsHAYe0sHzxjqNG6D4HwXDPZyWlrbNlp+OWy
 4sk9tPdWiZsA056OI3UOkBF4Gg8745biZWkGtKrcnfv6L8h/cWXaK8jPBzD46aX7pCn6
 ZxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=EcZMxX6qzEdvhPrN3eMhi0OFnEzktkw9ICUQt2FBRcs=;
 b=GKEGwvLqxhPTGaCwU85uEIuimEvaguRg83x6ununfBzNTnCFqHgNoKI687SGGkGMMq
 s78fT71gukIod+vHwRzz+vptL7ICYiPa6PD2doppZYGzYwFGOAHX+Q3t2db/xYfLkg30
 3ODi9GBcD2CEZ7rdNdMj/TFsw8CQHWe7CVkp1NfLqo7vhH6RDVNGOI4Sv3aW31GHjcyl
 b9o0R9nANpTPH0BdN6zeKsQesAkiCQ/f13n8RuGWPLHj1y8aeFMsfU5eXnv5SERzlwIp
 rcTGoQxRYi6vq6+VY5gGpNA/yDwwfOkJL2oj6O/4cFn32SH0oOkdWtg5lXV4iMP/1cFo
 hN+g==
X-Gm-Message-State: APjAAAXdUR/p1MjUt8Om/L2QG5GF7+kkqyu8hQAqWq4j76oQjWu9l9Fj
 5twSmCOyCBZf6DszSfnX5BZU4lG/lwsRND1yeMw=
X-Google-Smtp-Source: APXvYqyy8gIPvTK983lIH2e1lpWGIcOidvu3/3fGdWfCGM15uZcB7EHvsAL84jJ5vklCMqKJtz4c1c8c+clEPJY2n3U=
X-Received: by 2002:ac2:550c:: with SMTP id j12mr20517669lfk.171.1566453344840; 
 Wed, 21 Aug 2019 22:55:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:90c4:0:0:0:0:0 with HTTP; Wed, 21 Aug 2019 22:55:44
 -0700 (PDT)
From: "Charles W. Jackson Jr." <harolddismond@gmail.com>
Date: Thu, 22 Aug 2019 06:55:44 +0100
Message-ID: <CAP5MBUzip3osYEcH7Eotb7xckaMt0pdVrRUwLuDG=m5+kVNNuQ@mail.gmail.com>
Subject: =?UTF-8?Q?Laufende_Wohlt=C3=A4tigkeit_Spenden_Nachrichtenbrief?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_225547_317059_28DC1F10 
X-CRM114-Status: UNSURE (  -1.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (harolddismond[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
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
Reply-To: jacksondonation@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0gCkd1dGVuIFRhZyBsaWViZXIgTnV0em5pZcOfZXIKU2llIGVyaGFsdGVuIGRpZXNlIEUtTWFp
bCB2b24gZGVyIENoYXJsZXMgVy4gSmFja3NvbiBKci4gRm91bmRhdGlvbi4KSWNoIGJpbiBlaW4g
R2V3aW5uZXIgZGVzIFBvd2VyYmFsbCBMb3R0ZXJ5IEphY2twb3QgaW0gV2VydCB2b24gMzQ0LDYK
TWlsbGlvbmVuIFVTLURvbGxhci4gSWNoIGhhYmUgZGllc2UgTG90dGVyaWUgYW0gMS4gSnVuaSAy
MDE5IGdld29ubmVuCnVuZCBzY2hyZWliZSwgdW0gU2llIGRhcsO8YmVyIHp1IGluZm9ybWllcmVu
LCBkYXNzIEdvb2dsZSBtaXQgTWljcm9zb2Z0Cnp1c2FtbWVuYXJiZWl0ZXQgSWNoIGhhYmUgSWhy
ZSAiRS1NYWlsLUFkcmVzc2UiIGF1ZiBtZWluZSBCaXR0ZSwgZWluZW4KU3BlbmRlbmJldHJhZyB2
b24g4oKsIDIuMDAwLjAwMCwwMCBNaW8uIEV1cm8genUgZXJoYWx0ZW4sIMO8YmVybWl0dGVsdC4K
SWNoIHNwZW5kZSBkaWVzZSAyIE1pbGxpb25lbiBFdXJvIGFuIFNpZSwgdW0gZGVuIFdvaGx0w6R0
aWdrZWl0c2hlaW1lbgp1bmQgYXJtZW4gTWVuc2NoZW4gaW4gSWhyZXIgR2VtZWluZGUgenUgaGVs
ZmVuLCBkYW1pdCB3aXIgZGllIFdlbHQgZsO8cgphbGxlIHp1IGVpbmVtIGJlc3NlcmVuIE9ydCBt
YWNoZW4ga8O2bm5lbi4gV2VpdGVyZSBJbmZvcm1hdGlvbmVuIGZpbmRlbgpTaWUgYXVmIGRlciBm
b2xnZW5kZW4gV2Vic2l0ZSwgZGFtaXQgU2llIGRpZXNlciBTcGVuZGUgaW4gSMO2aGUgdm9uIDIK
TWlvLiBFVVIgbmljaHQgc2tlcHRpc2NoIGdlZ2Vuw7xiZXJzdGVoZW4uCgpodHRwczovL3d3dy5j
YnNuZXdzLmNvbS9uZXdzL3Bvd2VyYmFsbC13aW5uZXItbm9ydGgtY2Fyb2xpbmEtcmV0aXJlZS1j
aGFybGVzLWphY2tzb24tMzQ0LTYtbWlsbGlvbi1qYWNrcG90LWZvcnR1bmUtY29va2llLW51bWJl
cnMvCgpTaWUga8O2bm5lbiBhdWNoIG1laW4gWW91VHViZSBmw7xyIG1laHIgQmVzdMOkdGlndW5n
IGF1ZnBhc3NlbjoKaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1Ybk1xYTVOSHZaNAoK
IEJpdHRlIGFudHdvcnRlbiBTaWUgbWlyIMO8YmVyOiAoamFja3NvbmRvbmF0aW9uQGdtYWlsLmNv
bSksIGRhbWl0IHdpcgp3ZWl0ZXIgdm9yZ2VoZW4ga8O2bm5lbiwgZGFtaXQgZGllIHp1c3TDpG5k
aWdlIEJhbmsgSWhuZW4gZWluZSBBVE0tS2FydGUKaW0gV2VydCB2b24gMiBNaW8uIEVVUiBnZW5l
cmllcnQgdW5kIElobmVuIGRpZXNlIEFUTS1LYXJ0ZSB6dWdlc3RlbGx0CndpcmQgZGVuIFBJTi1D
b2RlLCB1bSBhdWYgZGllIFNwZW5kZW5nZWxkZXIgenV6dWdyZWlmZW4uIEJpdHRlCmJlYWNodGVu
IFNpZSwgZGFzcyBhbGxlIEFudHdvcnRlbiBhbiBqYWNrc29uZG9uYXRpb25AZ21haWwuY29tCmdl
c2VuZGV0IHdlcmRlbiBtw7xzc2VuLCB1bSB3ZWl0ZXJlIEluZm9ybWF0aW9uZW4genVtIEVtcGZh
bmcgZGllc2VyClNwZW5kZSDDvGJlciBkaWUgdW5pdmVyc2VsbGUgR2VsZGF1dG9tYXRlbmthcnRl
IHp1IGVyaGFsdGVuLCBkaWUgSWhuZW4Kc28gc2NobmVsbCB3aWUgbcO2Z2xpY2ggenVnZXNhbmR0
IHdpcmQuIG1lbGRlIGRpY2ggamV0enQgd2llZGVyIGJlaSBtaXIKCkZyZXVuZGxpY2hlIEdyw7zD
n2UsCkNoYXJsZXMgVy4gSmFja3NvbiBKci4KKiAqICogKiAqICogKiAqICogKiAqICogKiAqICog
KgpQb3dlcmJhbGwgSmFja3BvdCBHZXdpbm5lcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K

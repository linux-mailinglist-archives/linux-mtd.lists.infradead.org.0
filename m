Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3256C116C3B
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 12:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RbKPxDD/T1HHBrOa0Yr6qPWLCuUSAULhCqvNBZ40ThQ=; b=USzKB7lqLscpae
	DrYR4tOVXxO/lfoxiiWwj3M4/Q7b0G0Cw6sQLOCyuUwhAeadQ5MrQmBaAESlFJ+zN/8abKLZFepP6
	6RhhFloKrdJOlSK50ZvHLUJJPq118r04oKQ+hSCY+vNN2fPNq+MKqsoy20oFRKIfmnqUmrURhPLrm
	u+SLyTtBKnji32Y4+f0XzzW+KHiY7qL0F+YquWZREepIAPDG3nUvBITrRojtuQaAfb0emDuITrLjJ
	YvTuDpiXa4DaY6B2LeoEQTZZ4KpTwApiF41Pw95olmnMtT0GcyJ7HmkvG+E89aztHyxuDWGtPxkdi
	/PH+AdpnBJ5Lq5HSz+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieH8s-0007s5-E0; Mon, 09 Dec 2019 11:23:54 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieH8j-0007rX-DW
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 11:23:47 +0000
Received: by mail-wm1-x330.google.com with SMTP id p17so14498793wmi.3
 for <linux-mtd@lists.infradead.org>; Mon, 09 Dec 2019 03:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ubiwhere-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=kqdJZdnf7nhtOWkgbDgOCr30qzL8mVQsDDVDDY9gHgU=;
 b=1KsPwJvg2aE1Y7kFMHvd41dH4/DKDufzrhYjPBjSOTgCOFhIwmqa/GI3e9uRHV98dF
 q7aBkwkmT3v1B1SrGLBV4o52Kv2CQv1OTU6ZxXTso/6b1ld0x6FF0ODECI5iG/GjRMWL
 2Nt0YGZ2SKvtDMkMpmmoGSZVBsmMziqeRIjCWJBuPPdw8TpB1nQsV75zwqqnVnR41Kvx
 4+IkEthLdJlQLNxKCLNohGKknUNA13idSKpdCQxej+Nbmzb2eMqEiv+EDxzbdRCNu2RL
 3R+Sm0Tvx/o2Ngsmt3AedWhCbT6T8Ec0QdXbTAs72WePqPC10haQkiChQNRIw7yVD1mg
 aKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=kqdJZdnf7nhtOWkgbDgOCr30qzL8mVQsDDVDDY9gHgU=;
 b=qVNcRhOIyYbyEKYC2dBhcb+R0QnApG33ccWSEQwJN69fA5jITOT7pqDjGdX474ETiS
 /eoF0+DMBkg/X2wnxUAWR3QfxtIwpm9fOLIsLbkXW4d915hJmVq+Qrsqa7AynWPhMF43
 fY5gra3hGkwtkgXgojhskPMrNnI7ALNjEyW9c7IFVmJ18s+Crs7mXcnNbJb6bYZ13DZ+
 1iU1TKjXcBPxLYJ8Vj6taC+bQEbvWU/fQ640bmX89kdlOZXCNT/3xvR1s36D41tvyKoa
 dJK/8mF9AT/JStFaFNLs6VWVOkMv+jyzJKRF3wAb9oz8fX+k/fuLVDPsOP+qaNji1/bB
 5EnQ==
X-Gm-Message-State: APjAAAV/3Sw5Xit6cSyqX6TiO2Q0gty0s9a7zQiJoIjtVarxqxGxsUIF
 3W5nFJofMbt1Z8cnrzMBy6wQAA==
X-Google-Smtp-Source: APXvYqyV7fAH//26RxbnxQtNbjFhsIGzlEDc8ahs48rqQtKF1TGCJlHri4VTDv7XOJlH4Gm5nmfk/g==
X-Received: by 2002:a7b:ce17:: with SMTP id m23mr22681036wmc.94.1575890623145; 
 Mon, 09 Dec 2019 03:23:43 -0800 (PST)
Received: from [192.168.2.105] ([161.230.108.89])
 by smtp.gmail.com with ESMTPSA id e18sm26361944wrr.95.2019.12.09.03.23.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 03:23:42 -0800 (PST)
To: linux-mtd@lists.infradead.org
From: ajcarvalho <ajcarvalho@ubiwhere.com>
Subject: UBIFS becomes read-only
Message-ID: <d4a10120-5eae-c907-552c-c52be11b06f3@ubiwhere.com>
Date: Mon, 9 Dec 2019 11:23:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_032345_518240_7C6870C4 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgYWxsLAoKCkkndmUgYmVlbiBjb21pbmcgYWNyb3NzIHRoZSBpc3N1ZSBvZiB0aGUgZmlsZSBz
eXN0ZW0gYmVjb21pbmcgcmVhZC1vbmx5IApxdWl0ZSBmcmVxdWVudGx5LgoKVXN1YWxseSB0aGlz
IGNhbiBiZSBzb2x2ZWQgd2l0aCBhIHJlYm9vdCBidXQsIGluIGEgbW9yZSByZWNlbnQgY2FzZSwg
dGhlIApzdGF0ZSBwZXJzaXN0ZWQgdW50aWwgSSByZS1mbGFzaGVkIHRoZSBkZXZpY2UuCgpXZSdy
ZSBydW5uaW5nIGtlcm5lbCAyLjYuMzUgb24gYW4gaS5NWDI4IGFuZCBhIE1UMjlGOEcwOEFCQUNB
IGZsYXNoLgoKVGhlIFVCSSByZWxhdGVkIGtlcm5lbCBsb2cgbWVzc2FnZXMgYXJlIGFzIGZvbGxv
d3M6CgpVQkk6IGF0dGFjaGluZyBtdGQxIHRvIHViaTAKVUJJOiBwaHlzaWNhbCBlcmFzZWJsb2Nr
IHNpemU6wqDCoCAyNjIxNDQgYnl0ZXMgKDI1NiBLaUIpClVCSTogbG9naWNhbCBlcmFzZWJsb2Nr
IHNpemU6wqDCoMKgIDI1Mzk1MiBieXRlcwpVQkk6IHNtYWxsZXN0IGZsYXNoIEkvTyB1bml0OsKg
wqDCoCA0MDk2ClVCSTogVklEIGhlYWRlciBvZmZzZXQ6wqDCoMKgwqDCoMKgwqDCoMKgIDQwOTYg
KGFsaWduZWQgNDA5NikKVUJJOiBkYXRhIG9mZnNldDrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgODE5MgpVQkk6IGF0dGFjaGVkIG10ZDEgdG8gdWJpMApVQkk6IE1URCBkZXZpY2UgbmFt
ZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJncG1pLW5mYy1nZW5lcmFsLXVzZSIKVUJJOiBNVEQg
ZGV2aWNlIHNpemU6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMDA0IE1pQgpVQkk6IG51bWJlciBv
ZiBnb29kIFBFQnM6wqDCoMKgwqDCoMKgwqAgNDAxNgpVQkk6IG51bWJlciBvZiBiYWQgUEVCczrC
oMKgwqDCoMKgwqDCoMKgIDAKVUJJOiBtYXguIGFsbG93ZWQgdm9sdW1lczrCoMKgwqDCoMKgwqAg
MTI4ClVCSTogd2Vhci1sZXZlbGluZyB0aHJlc2hvbGQ6wqDCoMKgIDQwOTYKVUJJOiBudW1iZXIg
b2YgaW50ZXJuYWwgdm9sdW1lczogMQpVQkk6IG51bWJlciBvZiB1c2VyIHZvbHVtZXM6wqDCoMKg
wqAgMgpVQkk6IGF2YWlsYWJsZSBQRUJzOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyNwpVQkk6
IHRvdGFsIG51bWJlciBvZiByZXNlcnZlZCBQRUJzOiAzOTg5ClVCSTogbnVtYmVyIG9mIFBFQnMg
cmVzZXJ2ZWQgZm9yIGJhZCBQRUIgaGFuZGxpbmc6IDQwClVCSTogbWF4L21lYW4gZXJhc2UgY291
bnRlcjogNTgzLzEwOQpVQkk6IGltYWdlIHNlcXVlbmNlIG51bWJlcjogMTAyMzIwMzAxNQpVQkk6
IGJhY2tncm91bmQgdGhyZWFkICJ1YmlfYmd0MGQiIHN0YXJ0ZWQsIFBJRCA5MzkKVUJJRlM6IHJl
Y292ZXJ5IG5lZWRlZApVQklGUzogcmVjb3ZlcnkgY29tcGxldGVkClVCSUZTOiBtb3VudGVkIFVC
SSBkZXZpY2UgMCwgdm9sdW1lIDAsIG5hbWUgInJvb3RmczAiClVCSUZTOiBmaWxlIHN5c3RlbSBz
aXplOsKgwqAgNTE4ODIzOTM2IGJ5dGVzICg1MDY2NjQgS2lCLCA0OTQgTWlCLCAyMDQzIExFQnMp
ClVCSUZTOiBqb3VybmFsIHNpemU6wqDCoMKgwqDCoMKgIDk0MDQ0MTYgYnl0ZXMgKDkxODQgS2lC
LCA4IE1pQiwgMzggTEVCcykKVUJJRlM6IG1lZGlhIGZvcm1hdDrCoMKgwqDCoMKgwqAgdzQvcjAg
KGxhdGVzdCBpcyB3NC9yMCkKVUJJRlM6IGRlZmF1bHQgY29tcHJlc3NvcjogbHpvClVCSUZTOiBy
ZXNlcnZlZCBmb3Igcm9vdDrCoCAwIGJ5dGVzICgwIEtpQikKVUJJRlM6IHJlY292ZXJ5IG5lZWRl
ZApVQkkgZXJyb3I6IHViaV9pb19yZWFkOiBlcnJvciAtNzQgd2hpbGUgcmVhZGluZyAyNTM5NTIg
Ynl0ZXMgZnJvbSBQRUIgCjE0NzY6ODE5MiwgcmVhZCAyNTM5NTIgYnl0ZXMKVUJJRlMgZXJyb3Ig
KHBpZCAxOTMxKTogdWJpZnNfc2NhbjogY29ycnVwdCBlbXB0eSBzcGFjZSBhdCBMRUIgMTIyMToy
NDY3MzMKVUJJRlMgZXJyb3IgKHBpZCAxOTMxKTogdWJpZnNfc2Nhbm5lZF9jb3JydXB0aW9uOiBj
b3JydXB0aW9uIGF0IExFQiAKMTIyMToyNDY3MzMKVUJJRlMgZXJyb3IgKHBpZCAxOTMxKTogdWJp
ZnNfc2NhbjogTEVCIDEyMjEgc2Nhbm5pbmcgZmFpbGVkClVCSUZTIGVycm9yIChwaWQgMTkzMSk6
IGRvX2NvbW1pdDogY29tbWl0IGZhaWxlZCwgZXJyb3IgLTExNwpVQklGUyB3YXJuaW5nIChwaWQg
MTkzMSk6IHViaWZzX3JvX21vZGU6IHN3aXRjaGVkIHRvIHJlYWQtb25seSBtb2RlLCAKZXJyb3Ig
LTExNwpVQklGUzogcmVjb3ZlcnkgY29tcGxldGVkClVCSUZTOiBtb3VudGVkIFVCSSBkZXZpY2Ug
MCwgdm9sdW1lIDEsIG5hbWUgImRhdGEiClVCSUZTOiBmaWxlIHN5c3RlbSBzaXplOsKgwqAgNDc3
NDI5NzYwIGJ5dGVzICg0NjYyNDAgS2lCLCA0NTUgTWlCLCAxODgwIExFQnMpClVCSUZTOiBqb3Vy
bmFsIHNpemU6wqDCoMKgwqDCoMKgIDIzODcxNDg4IGJ5dGVzICgyMzMxMiBLaUIsIDIyIE1pQiwg
OTQgTEVCcykKVUJJRlM6IG1lZGlhIGZvcm1hdDrCoMKgwqDCoMKgwqAgdzQvcjAgKGxhdGVzdCBp
cyB3NC9yMCkKVUJJRlM6IGRlZmF1bHQgY29tcHJlc3NvcjogbHpvClVCSUZTOiByZXNlcnZlZCBm
b3Igcm9vdDrCoCA0OTUyNjgzIGJ5dGVzICg0ODM2IEtpQikKCgpCZWluZyB0aGF0IHRoZXJlJ3Mg
YSBmbGlwLWJpdCBoZXJlOgowMDAwMDAwMDogZmZmZmZmZmQgZmZmZmZmZmYgZmZmZmZmZmYgZmZm
ZmZmZmYgZmZmZmZmZmYgZmZmZmZmZmYgZmZmZmZmZmYgCmZmZmZmZmZmwqAgLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4KCgooSSBjYW4gcHJvdmlkZSB0aGUgZnVsbCBkdW1wIGlmIG5l
ZWRlZCkKCgptdGRpbmZvIHNob3dzIHRoZSBmb2xsb3dpbmcgb3V0cHV0OgoKQ291bnQgb2YgTVRE
IGRldmljZXM6wqDCoMKgwqDCoMKgwqDCoMKgwqAgMgpQcmVzZW50IE1URCBkZXZpY2VzOsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbXRkMCwgbXRkMQpTeXNmcyBpbnRlcmZhY2Ugc3VwcG9ydGVkOsKg
wqDCoMKgwqAgeWVzbXRkMApOYW1lOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZ3BtaS1uZmMtMC1ib290ClR5cGU6wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuYW5kCkVyYXNlYmxvY2sgc2l6ZTrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjYyMTQ0IGJ5dGVzLCAyNTYuMCBLaUIKQW1v
dW50IG9mIGVyYXNlYmxvY2tzOsKgwqDCoMKgwqDCoMKgwqDCoCA4MCAoMjA5NzE1MjAgYnl0ZXMs
IDIwLjAgTWlCKQpNaW5pbXVtIGlucHV0L291dHB1dCB1bml0IHNpemU6IDQwOTYgYnl0ZXMKU3Vi
LXBhZ2Ugc2l6ZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQwOTYgYnl0ZXMK
T09CIHNpemU6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjE4
IGJ5dGVzCkNoYXJhY3RlciBkZXZpY2UgbWFqb3IvbWlub3I6wqDCoCA5MDowCkJhZCBibG9ja3Mg
YXJlIGFsbG93ZWQ6wqDCoMKgwqDCoMKgwqDCoCB0cnVlCkRldmljZSBpcyB3cml0YWJsZTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJ1ZW10ZDEKTmFtZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdwbWktbmZjLWdlbmVyYWwtdXNlClR5cGU6
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuYW5k
CkVyYXNlYmxvY2sgc2l6ZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjYyMTQ0IGJ5
dGVzLCAyNTYuMCBLaUIKQW1vdW50IG9mIGVyYXNlYmxvY2tzOsKgwqDCoMKgwqDCoMKgwqDCoCA0
MDE2ICgxMDUyNzcwMzA0IGJ5dGVzLCAxMDA0LjAgTWlCKQpNaW5pbXVtIGlucHV0L291dHB1dCB1
bml0IHNpemU6IDQwOTYgYnl0ZXMKU3ViLXBhZ2Ugc2l6ZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDQwOTYgYnl0ZXMKT09CIHNpemU6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMjE4IGJ5dGVzCkNoYXJhY3RlciBkZXZpY2UgbWFqb3IvbWlu
b3I6wqDCoCA5MDoyCkJhZCBibG9ja3MgYXJlIGFsbG93ZWQ6wqDCoMKgwqDCoMKgwqDCoCB0cnVl
CkRldmljZSBpcyB3cml0YWJsZTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJ1ZQoKCkkgZm9s
bG93ZWQgdGhlIHN1Z2dlc3Rpb25zIGhlcmUgdG8gbm8gY29uY2x1c2lvbnM6IApodHRwOi8vd3d3
LmxpbnV4LW10ZC5pbmZyYWRlYWQub3JnL2ZhcS91YmkuaHRtbCNMX2VjY19lcnJvcgoKV2UncmUg
dXNpbmcgdWJpZm9ybWF0IHRvIGZsYXNoIG91ciBkZXZpY2VzIGFuZCBJIHNpbXVsYXRlZCB0aGUg
TkFORCBpbiAKbXkgY29tcHV0ZXIsIGZsYXNoZWQgb3VyIGltYWdlLCBhbmQgcmFuIHRoZSBzdWdn
ZXN0ZWQgdGVzdHMgKGkuZS4gCm10ZF9uYW5kYml0ZXJycywgbXRkX3N1YnBhZ2V0ZXN0LCBtdGRf
cGFnZXRlc3QgYW5kIG10ZF9vb2J0ZXN0KS4gT25seSAKdGhlIG10ZF9uYW5kYml0ZXJycyB0ZXN0
IGZhaWxlZCwgaW4gbW9kZSAwLCBidXQgSSBiZWxpZXZlIGl0IHdhcyBhIApwcm9ibGVtIHdpdGgg
dGhlIG5hbmRzaW0gZHJpdmVyIG5vdCBiZWluZyBhYmxlIHRvIHdyaXRlIHRoZSByZXF1aXJlZCAK
Ynl0ZSBzaXplLgoKCkRvIHlvdSBoYXZlIGFueSBpZGVhIG9uIHdoeSB0aGlzIG1pZ2h0IGJlIGhh
cHBlbmluZyBhbmQgaG93IHdlIGNhbiBmaXggaXQ/CgotLS0KCkJlc3QgcmVnYXJkcywKQW50w7Nu
aW8gQ2FydmFsaG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=

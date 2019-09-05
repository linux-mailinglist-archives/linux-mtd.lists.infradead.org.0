Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4EAACF5
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 22:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OEqOG0CcjSrCx+UwJ7O/nMwI7LdJ/GK+bMb9MVplZQM=; b=e8WAlOB9ETJeQNgtcYKe99Djl+
	8aMP2ztsyV7ezbLOw6hbUDY2Kw3U8c/bFAJrAM6ynuWYAXzDxmDimDExR9DbmQMGtlm/Kiw7M292V
	GLHD84ne8PpIHQLyaWlpyMTnDeuEBGVfFKWfqfn5vZT70LbXnsB7N2YtrDxGfD9kytoK2Wivf3ywg
	ima/qDKboCRIT9gTIVNTdWjifbSAMYFRtLD3tU+uw0kJaeY/IrOYqVPN4rtebyVcIgHLS/kQ7V9OM
	x5MTOlGaUNe3h0/sdI3JMa6snDASknYvIHGk7UX0zdCZDCLMsh8E1nP+eExXozP0XLjsbAF93j4BA
	tbia3W9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yL3-00023K-Kl; Thu, 05 Sep 2019 20:26:41 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yKv-00022W-GB
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 20:26:35 +0000
Received: from [192.168.100.95] (unknown [95.138.208.137])
 by first.geanix.com (Postfix) with ESMTPSA id 89DA963606;
 Thu,  5 Sep 2019 20:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1567715176; bh=VJ82OV6R6HbsjR62OSCuFU/XKb/r/KLXjb1SAEyiolI=;
 h=To:Cc:From:Subject:Date;
 b=Wy7bbwoIcSEKoGQPKncErZCF7KWIvm5t8v8h2M97RK8iLqpNW+yjBtqVDgcczY1nd
 swcB9fGrmk4mlZxWoydlCh7fE3ISDbkdbKvWZSXWRDethtiDpZFPIpL+FpLpKOvSDF
 TwuUJu7qPzgxNphP6GqYjZb9rpER0FTcxO+jrUYhCcYNZnQW5Tht6+uqTXBLDNU3Zu
 abvMbMPYLIu1qcJTVRE4oDY38PXDYim5hIPQomuywXlJ0EfxaqDNzTm1HRJRSTjnG2
 Hb5xrbmxA9F86ZkqH2SpQ8PW9KMQ9sAlXBswVBwRXQX5t1uwLuIYxZmIX75o2HZNgX
 9NXjWmwAt0REw==
To: s.hauer@pengutronix.de, miquel.raynal@bootlin.com,
 linux-mtd@lists.infradead.org
From: Sean Nyekjaer <sean@geanix.com>
Subject: [Bug] mtd: rawnand: gpmi
Message-ID: <6a333d0f-09b2-d0d1-a3a5-955b31b6291e@geanix.com>
Date: Thu, 5 Sep 2019 22:26:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US-large
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
 autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on 77834cc0481d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_132633_848699_47B6B423 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mkl@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgpJIGhhdmUgYmVlbiB0cm91Ymxlc2hvb3Rpbmcgc29tZSBDQU4gcHJvYmxlbXMgb24gb3Vy
IGlteDZ1bGwgd2l0aCBhIHJhdyAKbmFuZCBmbGFzaC4KSSBub3JtYWxseSBydW4gd2l0aCBhIDQu
MTkgc2VyaWVzIGtlcm5lbCwgYnV0IHRvIHZlcmlmeSB0aG9zZSBDQU4gCnByb2JsZW1zIGhhdmUg
YmVlbiByZXNvbHZlZCBpbiBuZXdlciBrZXJuZWxzIGkgaGF2ZSBiZWVuIHRyeWluZyB+NS4zLXJj
Ni4KCkJ1dCB3aXRoIHRoYXQga2VybmVsIGkgaGF2ZSBydW4gaW50byB0cm91YmxlIHdpdGggdWJp
ZnMsIGl0IHRocm93cyBhIGxvdCAKb2YgZXJyb3JzOgpbICAxODguMzg0NTcyXSBOb3QgYSBub2Rl
LCBmaXJzdCAyNCBieXRlczoKWyAgMTg4LjM4NDU4OF0gMDAwMDAwMDA6IGZmIGZmIGZmIDAwIDAw
IDAwIDAwIGU0IDAzIDAwIDAwIGEwIDgxIDAwIDAwIDAxIAowMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAgICAgICAgICAgICAgICAgICAgICAgICAgLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uClsgIDE4
OC40MDI5NzZdIFVCSUZTIGVycm9yICh1YmkwOjggcGlkIDExNyk6IHViaWZzX3JlYWRfbm9kZTog
YmFkIG5vZGUgCnR5cGUgKDAgYnV0IGV4cGVjdGVkIDMpClsgIDE4OC40MTE2MDVdIFVCSUZTIGVy
cm9yICh1YmkwOjggcGlkIDExNyk6IHViaWZzX3JlYWRfbm9kZTogYmFkIG5vZGUgCmF0IExFQiA0
Njo0OTg4OCwgTEVCIG1hcHBpbmcgc3RhdHVzIDEKCkkgc3RhcnRlZCBhIGJpc2VjdCBmcm9tIExp
bnV4IDUuMy1yYzcgKGJhZCkgdG8gNS4yIChnb29kKS4KQW5kIGknbSBlbmRpbmcgdXAgaGVyZToK
CmNvbW1pdCBlZjM0N2MwY2ZkNjE5YTkyNTFlNWEyZjlmZjcyZTMzNjUwYTliY2NiIChIRUFEKQpB
dXRob3I6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KRGF0ZTogICBUdWUg
TWF5IDIxIDA5OjA2OjQzIDIwMTkgKzAyMDAKCiAgICAgbXRkOiByYXduYW5kOiBncG1pOiBJbXBs
ZW1lbnQgZXhlY19vcAoKZG1lc2cgb24gYm9vdDoKWyAgICAxLjIyOTQzMV0gbmFuZDogZGV2aWNl
IGZvdW5kLCBNYW51ZmFjdHVyZXIgSUQ6IDB4OTgsIENoaXAgSUQ6IDB4ZGMKWyAgICAxLjIyOTQ3
Ml0gbmFuZDogVG9zaGliYSBOQU5EIDUxMk1pQiAzLDNWIDgtYml0ClsgICAgMS4yMjk1MTBdIG5h
bmQ6IDUxMiBNaUIsIFNMQywgZXJhc2Ugc2l6ZTogMjU2IEtpQiwgcGFnZSBzaXplOiA0MDk2LCAK
T09CIHNpemU6IDEyOApbICAgIDEuMjI5NTQ3XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0t
LS0tLS0tLS0KWyAgICAxLjIyOTYwNF0gV0FSTklORzogQ1BVOiAwIFBJRDogMSBhdCAKZHJpdmVy
cy9tdGQvbmFuZC9yYXcvaW50ZXJuYWxzLmg6MTE0IG5hbmRfcmVzZXRfb3ArMHgxOTgvMHgxYzAK
WyAgICAxLjIyOTYzM10gTW9kdWxlcyBsaW5rZWQgaW46ClsgICAgMS4yMjk2ODRdIENQVTogMCBQ
SUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIAo1LjIuMC1yYzMtMDAwMjItZ2VmMzQ3
YzBjZmQ2MSAjODQKWyAgICAxLjIyOTcwOV0gSGFyZHdhcmUgbmFtZTogRnJlZXNjYWxlIGkuTVg2
IFVsdHJhbGl0ZSAoRGV2aWNlIFRyZWUpClsgICAgMS4yMjk3NzBdIFs8YzAxMTE4NGM+XSAodW53
aW5kX2JhY2t0cmFjZSkgZnJvbSBbPGMwMTBjYzc4Pl0gCihzaG93X3N0YWNrKzB4MTAvMHgxNCkK
WyAgICAxLjIyOTgyNV0gWzxjMDEwY2M3OD5dIChzaG93X3N0YWNrKSBmcm9tIFs8YzA4NzczMjg+
XSAKKGR1bXBfc3RhY2srMHhkNC8weDEwOCkKWyAgICAxLjIyOTg4MF0gWzxjMDg3NzMyOD5dIChk
dW1wX3N0YWNrKSBmcm9tIFs8YzAxMjVmZmM+XSAKKF9fd2Fybi5wYXJ0LjArMHhhOC8weGU4KQpb
ICAgIDEuMjI5OTI1XSBbPGMwMTI1ZmZjPl0gKF9fd2Fybi5wYXJ0LjApIGZyb20gWzxjMDEyNjE5
Yz5dIAood2Fybl9zbG93cGF0aF9udWxsKzB4NDAvMHg0YykKWyAgICAxLjIyOTk3MF0gWzxjMDEy
NjE5Yz5dICh3YXJuX3Nsb3dwYXRoX251bGwpIGZyb20gWzxjMDU2ODAxOD5dIAoobmFuZF9yZXNl
dF9vcCsweDE5OC8weDFjMCkKWyAgICAxLjIzMDAxOV0gWzxjMDU2ODAxOD5dIChuYW5kX3Jlc2V0
X29wKSBmcm9tIFs8YzA1NjlkODg+XSAKKG5hbmRfcmVzZXQrMHg1OC8weGI0KQpbICAgIDEuMjMw
MDY2XSBbPGMwNTY5ZDg4Pl0gKG5hbmRfcmVzZXQpIGZyb20gWzxjMDU2YTgxYz5dIAoobmFuZF9z
Y2FuX3dpdGhfaWRzKzB4NmFjLzB4MTViYykKWyAgICAxLjIzMDExMl0gWzxjMDU2YTgxYz5dIChu
YW5kX3NjYW5fd2l0aF9pZHMpIGZyb20gWzxjMDU3MzZiOD5dIAooZ3BtaV9uYW5kX3Byb2JlKzB4
MmI4LzB4NzA4KQpbICAgIDEuMjMwMTYwXSBbPGMwNTczNmI4Pl0gKGdwbWlfbmFuZF9wcm9iZSkg
ZnJvbSBbPGMwNTI4MTNjPl0gCihwbGF0Zm9ybV9kcnZfcHJvYmUrMHg0OC8weDk4KQpbICAgIDEu
MjMwMjA4XSBbPGMwNTI4MTNjPl0gKHBsYXRmb3JtX2Rydl9wcm9iZSkgZnJvbSBbPGMwNTI1Zjdj
Pl0gCihyZWFsbHlfcHJvYmUrMHhlYy8weDJjOCkKWyAgICAxLjIzMDI2MF0gWzxjMDUyNWY3Yz5d
IChyZWFsbHlfcHJvYmUpIGZyb20gWzxjMDUyNjJiND5dIAooZHJpdmVyX3Byb2JlX2RldmljZSsw
eDVjLzB4MTYwKQpbICAgIDEuMjMwMzAzXSBbPGMwNTI2MmI0Pl0gKGRyaXZlcl9wcm9iZV9kZXZp
Y2UpIGZyb20gWzxjMDUyNjU1OD5dIAooZGV2aWNlX2RyaXZlcl9hdHRhY2grMHg1OC8weDYwKQpb
ICAgIDEuMjMwMzQzXSBbPGMwNTI2NTU4Pl0gKGRldmljZV9kcml2ZXJfYXR0YWNoKSBmcm9tIFs8
YzA1MjY1Yjg+XSAKKF9fZHJpdmVyX2F0dGFjaCsweDU4LzB4ZDApClsgICAgMS4yMzAzOTFdIFs8
YzA1MjY1Yjg+XSAoX19kcml2ZXJfYXR0YWNoKSBmcm9tIFs8YzA1MjQ0MmM+XSAKKGJ1c19mb3Jf
ZWFjaF9kZXYrMHg3OC8weGI4KQpbICAgIDEuMjMwNDQxXSBbPGMwNTI0NDJjPl0gKGJ1c19mb3Jf
ZWFjaF9kZXYpIGZyb20gWzxjMDUyNTQ0Yz5dIAooYnVzX2FkZF9kcml2ZXIrMHgxNTAvMHgxZGMp
ClsgICAgMS4yMzA0ODRdIFs8YzA1MjU0NGM+XSAoYnVzX2FkZF9kcml2ZXIpIGZyb20gWzxjMDUy
NzI0OD5dIAooZHJpdmVyX3JlZ2lzdGVyKzB4NzQvMHgxMDgpClsgICAgMS4yMzA1MjhdIFs8YzA1
MjcyNDg+XSAoZHJpdmVyX3JlZ2lzdGVyKSBmcm9tIFs8YzAxMDMwOTA+XSAKKGRvX29uZV9pbml0
Y2FsbCsweDgwLzB4MzM0KQpbICAgIDEuMjMwNTc2XSBbPGMwMTAzMDkwPl0gKGRvX29uZV9pbml0
Y2FsbCkgZnJvbSBbPGMwYzAxMWI0Pl0gCihrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDJmYy8weDNl
NCkKWyAgICAxLjIzMDYyM10gWzxjMGMwMTFiND5dIChrZXJuZWxfaW5pdF9mcmVlYWJsZSkgZnJv
bSBbPGMwODhmZTFjPl0gCihrZXJuZWxfaW5pdCsweDgvMHgxMTApClsgICAgMS4yMzA2NjhdIFs8
YzA4OGZlMWM+XSAoa2VybmVsX2luaXQpIGZyb20gWzxjMDEwMTBiND5dIAoocmV0X2Zyb21fZm9y
aysweDE0LzB4MjApClsgICAgMS4yMzA2OTddIEV4Y2VwdGlvbiBzdGFjaygweGM4MDk3ZmIwIHRv
IDB4YzgwOTdmZjgpClsgICAgMS4yMzA3MzNdIDdmYTA6ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDAwMDAwMDAwIAowMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMApbICAgIDEu
MjMwNzcyXSA3ZmMwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAKMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKWyAgICAxLjIzMDgwNl0gN2ZlMDogMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAKWyAgICAxLjIz
MDgzMl0gaXJxIGV2ZW50IHN0YW1wOiAxMDQwMTEKWyAgICAxLjIzMDg3NV0gaGFyZGlycXMgbGFz
dCAgZW5hYmxlZCBhdCAoMTA0MDE3KTogWzxjMDE4N2UzND5dIApjb25zb2xlX3VubG9jaysweDNm
MC8weDVjMApbICAgIDEuMjMwOTExXSBoYXJkaXJxcyBsYXN0IGRpc2FibGVkIGF0ICgxMDQwMjIp
OiBbPGMwMTg3YWM4Pl0gCmNvbnNvbGVfdW5sb2NrKzB4ODQvMHg1YzAKWyAgICAxLjIzMDk1MF0g
c29mdGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoMTAzOTYwKTogWzxjMDEwMjU0MD5dIApfX2RvX3Nv
ZnRpcnErMHgzMjAvMHg1MGMKWyAgICAxLjIzMDk5Ml0gc29mdGlycXMgbGFzdCBkaXNhYmxlZCBh
dCAoMTAzOTUzKTogWzxjMDEyZDYzND5dIAppcnFfZXhpdCsweDEyNC8weDE4YwpbICAgIDEuMjMx
MDYwXSAtLS1bIGVuZCB0cmFjZSAxMmI5ZDE5YTVhYWM0YzlmIF0tLS0KWyAgICAxLjIzNDcxMF0g
QmFkIGJsb2NrIHRhYmxlIG5vdCBmb3VuZCBmb3IgY2hpcCAwClsgICAgMS4yMzYwNzZdIEJhZCBi
bG9jayB0YWJsZSBub3QgZm91bmQgZm9yIGNoaXAgMApbICAgIDEuMjM2MTEzXSBTY2FubmluZyBk
ZXZpY2UgZm9yIGJhZCBibG9ja3MKWyAgICAxLjI0NDkwN10gcmFuZG9tOiBmYXN0IGluaXQgZG9u
ZQpbICAgIDEuNzAxNzY0XSBCYWQgZXJhc2VibG9jayA3OTggYXQgMHgwMDAwMGM3ODAwMDAKWyAg
ICAyLjEzMjczNF0gQmFkIGVyYXNlYmxvY2sgMTUzNiBhdCAweDAwMDAxODAwMDAwMApbICAgIDIu
MTMzMDk0XSBCYWQgZXJhc2VibG9jayAxNTM3IGF0IDB4MDAwMDE4MDQwMDAwClsgICAgMi40MzQw
NTddIEJhZCBibG9jayB0YWJsZSB3cml0dGVuIHRvIDB4MDAwMDFmZmMwMDAwLCB2ZXJzaW9uIDB4
MDEKWyAgICAyLjQzNzI1NF0gQmFkIGJsb2NrIHRhYmxlIHdyaXR0ZW4gdG8gMHgwMDAwMWZmODAw
MDAsIHZlcnNpb24gMHgwMQoKSSdtIGhlcmUgaWYgYW55dGhpbmcgbmVlZHMgdGVzdGluZyA6LSkK
Ci0tIApCZXN0IHJlZ2FyZHMsClNlYW4gTnlla2rDpnIKRW1iZWRkZWQgTGludXggQ29uc3VsdGFu
dAoKKzQ1IDQyNDI3MzI2CnNlYW5AZ2Vhbml4LmNvbQoKR2Vhbml4IEFwUwpodHRwczovL2dlYW5p
eC5jb20KREszOTYwMDcwNgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K

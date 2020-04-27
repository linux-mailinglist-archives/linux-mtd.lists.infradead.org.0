Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F38D1BAEDB
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 22:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ihdwepWtMul7rwobo6kBdRfAF+TAsQbNs02VJpSMNI=; b=WTHdiY6wDh4WCu
	xmONVoEXE9B+lj5+43cw+DgzMMvrVLKxtjyaaQ3MSw/y/GbxqgqPb7HLLVTc1YaCOOSVJs/YUd/HY
	IYTOA7+9LnuKdtd/emEzni9yygnJr+R/9j/xqg3H+c/FshQHVZtL/aPKPRU2Qi8w2IYn9j2rL6H6l
	Uh3R+obIcbzk3TVgdaACRCifdsGRtFEgu82iZ9782uFhNTuNU8BwnhUt8FuEjvsByTLipNVnX2Trr
	ZItoE965RSo8BcyRQ+rofttUlyjfJCz67H2MHhKBsOoOQ3uHhtDHu5rH4BBFi+MNPqHd7BINv88bG
	mBs4dMQBGpkKCA9WCbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTA44-00020V-Mq; Mon, 27 Apr 2020 20:09:16 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTA3w-0001zX-1D
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 20:09:09 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 94DB5240002;
 Mon, 27 Apr 2020 20:09:04 +0000 (UTC)
Date: Mon, 27 Apr 2020 22:09:03 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH v2 2/3] mtd: lpddr: Replace printk with pr_notice
Message-ID: <20200427220903.5ad059d5@xps13>
In-Reply-To: <ff48ce07ef208ba65b858f09279a3b36031d64d2.1588016644.git.gustavo@embeddedor.com>
References: <cover.1588016644.git.gustavo@embeddedor.com>
 <ff48ce07ef208ba65b858f09279a3b36031d64d2.1588016644.git.gustavo@embeddedor.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_130908_204769_6B635E72 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Joe Perches <joe@perches.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgR3VzdGF2bywKCiJHdXN0YXZvIEEuIFIuIFNpbHZhIiA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNv
bT4gd3JvdGUgb24gTW9uLCAyNyBBcHIKMjAyMCAxNDo1NDoxMyAtMDUwMDoKCj4gcHJfbm90aWNl
IGlzIHByZWZlcnJlZCBvdmVyIHByaW50ay4KPiAKPiBBbHNvLCBjb2FsZXNjZSBmb3JtYXRzIGFz
IGNvYWxlc2NpbmcgaXMgcGFydCBvZiBjb2Rpbmctc3R5bGU6Cj4gIm5ldmVyIGJyZWFrIHVzZXIt
dmlzaWJsZSBzdHJpbmdzIHN1Y2ggYXMgcHJpbnRrIG1lc3NhZ2VzIgo+IAo+IFN1Z2dlc3RlZC1i
eTogSm9lIFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZv
IEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4g
djI6Cj4gIC0gQ29hbGVzY2UgZm9ybWF0cyBhbmQgdXBkYXRlIGNoYW5nZWxvZyB0ZXh0LCBhY2Nv
cmRpbmdseS4KPiAKPiAgaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oIHwgMjcgKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxNiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oIGIv
aW5jbHVkZS9saW51eC9tdGQvcGZvdy5oCj4gaW5kZXggYzY1ZDdhM2JlM2M2Li5jZDIxYzY3Njgw
NjUgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oCj4gKysrIGIvaW5jbHVk
ZS9saW51eC9tdGQvcGZvdy5oCj4gQEAgLTEyNywzMSArMTI3LDI2IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBwcmludF9kcnNfZXJyb3IodW5zaWduZWQgZHNyKQo+ICAJaW50IHByb2dfc3RhdHVzID0g
KGRzciAmIERTUl9SUFMpID4+IDg7Cj4gIAo+ICAJaWYgKCEoZHNyICYgRFNSX0FWQUlMQUJMRSkp
Cj4gLQkJcHJpbnRrKEtFUk5fTk9USUNFIkRTUi4xNTogKDApIERldmljZSBub3QgQXZhaWxhYmxl
XG4iKTsKPiArCQlwcl9ub3RpY2UoIkRTUi4xNTogKDApIERldmljZSBub3QgQXZhaWxhYmxlXG4i
KTsKPiAgCWlmICgocHJvZ19zdGF0dXMgJiAweDAzKSA9PSAweDAzKQo+IC0JCXByaW50ayhLRVJO
X05PVElDRSJEU1IuOSw4OiAoMTEpIEF0dGVtcHQgdG8gcHJvZ3JhbSBpbnZhbGlkICIKPiAtCQkJ
CQkJImhhbGYgd2l0aCA0MWggY29tbWFuZFxuIik7Cj4gKwkJcHJfbm90aWNlKCJEU1IuOSw4OiAo
MTEpIEF0dGVtcHQgdG8gcHJvZ3JhbSBpbnZhbGlkIGhhbGYgd2l0aCA0MWggY29tbWFuZFxuIik7
Cj4gIAllbHNlIGlmIChwcm9nX3N0YXR1cyAmIDB4MDIpCj4gLQkJcHJpbnRrKEtFUk5fTk9USUNF
IkRTUi45LDg6ICgxMCkgT2JqZWN0IE1vZGUgUHJvZ3JhbSBhdHRlbXB0ICIKPiAtCQkJCQkiaW4g
cmVnaW9uIHdpdGggQ29udHJvbCBNb2RlIGRhdGFcbiIpOwo+ICsJCXByX25vdGljZSgiRFNSLjks
ODogKDEwKSBPYmplY3QgTW9kZSBQcm9ncmFtIGF0dGVtcHQgaW4gcmVnaW9uIHdpdGggQ29udHJv
bCBNb2RlIGRhdGFcbiIpOwo+ICAJZWxzZSBpZiAocHJvZ19zdGF0dXMgJiAgMHgwMSkKPiAtCQlw
cmludGsoS0VSTl9OT1RJQ0UiRFNSLjksODogKDAxKSBQcm9ncmFtIGF0dGVtcHQgaW4gcmVnaW9u
ICIKPiAtCQkJCQkJIndpdGggT2JqZWN0IE1vZGUgZGF0YVxuIik7Cj4gKwkJcHJfbm90aWNlKCJE
U1IuOSw4OiAoMDEpIFByb2dyYW0gYXR0ZW1wdCBpbiByZWdpb24gd2l0aCBPYmplY3QgTW9kZSBk
YXRhXG4iKTsKPiAgCWlmICghKGRzciAmIERTUl9SRUFEWV9TVEFUVVMpKQo+IC0JCXByaW50ayhL
RVJOX05PVElDRSJEU1IuNzogKDApIERldmljZSBpcyBCdXN5XG4iKTsKPiArCQlwcl9ub3RpY2Uo
IkRTUi43OiAoMCkgRGV2aWNlIGlzIEJ1c3lcbiIpOwo+ICAJaWYgKGRzciAmIERTUl9FU1MpCj4g
LQkJcHJpbnRrKEtFUk5fTk9USUNFIkRTUi42OiAoMSkgRXJhc2UgU3VzcGVuZGVkXG4iKTsKPiAr
CQlwcl9ub3RpY2UoIkRTUi42OiAoMSkgRXJhc2UgU3VzcGVuZGVkXG4iKTsKPiAgCWlmIChkc3Ig
JiBEU1JfRVJBU0VfU1RBVFVTKQo+IC0JCXByaW50ayhLRVJOX05PVElDRSJEU1IuNTogKDEpIEVy
YXNlL0JsYW5rIGNoZWNrIGVycm9yXG4iKTsKPiArCQlwcl9ub3RpY2UoIkRTUi41OiAoMSkgRXJh
c2UvQmxhbmsgY2hlY2sgZXJyb3JcbiIpOwo+ICAJaWYgKGRzciAmIERTUl9QUk9HUkFNX1NUQVRV
UykKPiAtCQlwcmludGsoS0VSTl9OT1RJQ0UiRFNSLjQ6ICgxKSBQcm9ncmFtIEVycm9yXG4iKTsK
PiArCQlwcl9ub3RpY2UoIkRTUi40OiAoMSkgUHJvZ3JhbSBFcnJvclxuIik7Cj4gIAlpZiAoZHNy
ICYgRFNSX1ZQUFMpCj4gLQkJcHJpbnRrKEtFUk5fTk9USUNFIkRTUi4zOiAoMSkgVnBwIGxvdyBk
ZXRlY3QsIG9wZXJhdGlvbiAiCj4gLQkJCQkJImFib3J0ZWRcbiIpOwo+ICsJCXByX25vdGljZSgi
RFNSLjM6ICgxKSBWcHAgbG93IGRldGVjdCwgb3BlcmF0aW9uIGFib3J0ZWRcbiIpOwo+ICAJaWYg
KGRzciAmIERTUl9QU1MpCj4gLQkJcHJpbnRrKEtFUk5fTk9USUNFIkRTUi4yOiAoMSkgUHJvZ3Jh
bSBzdXNwZW5kZWRcbiIpOwo+ICsJCXByX25vdGljZSgiRFNSLjI6ICgxKSBQcm9ncmFtIHN1c3Bl
bmRlZFxuIik7Cj4gIAlpZiAoZHNyICYgRFNSX0RQUykKPiAtCQlwcmludGsoS0VSTl9OT1RJQ0Ui
RFNSLjE6ICgxKSBBYm9ydGVkIEVyYXNlL1Byb2dyYW0gYXR0ZW1wdCAiCj4gLQkJCQkJIm9uIGxv
Y2tlZCBibG9ja1xuIik7Cj4gKwkJcHJfbm90aWNlKCJEU1IuMTogKDEpIEFib3J0ZWQgRXJhc2Uv
UHJvZ3JhbSBhdHRlbXB0IG9uIGxvY2tlZCBibG9ja1xuIik7Cj4gIH0KPiAgI2VuZGlmIC8qIF9f
TElOVVhfTVREX1BGT1dfSCAqLwoKClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW10ZC8K

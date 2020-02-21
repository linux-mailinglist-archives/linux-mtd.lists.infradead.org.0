Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5877167F68
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Feb 2020 14:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0F7zjRckE/9y3h+B9XlMIpdmeGUNY+phassOMXVGYXQ=; b=fRobJXiGSGWxVA
	cvt0Cy9BSTnxMtxjJ3BsVcm1b+ehPD/CcJ35ZRRPErA7ou7EdsvPAfEms9G99zr/guigtG/ThkBhu
	iR+4QLW6VVGk+3vb3cAxQoaxS+/uCHI03mPkQa0fLMb7DkTVJt7bTTURaN/QOZjyYqny5WEsTVx9R
	E2VwvOjARemDMIeLbol0/l95IKtYsrdSHeORmCXotZWqxn0V+tWVD4PgM9ta2ynSmdH+UBxZV2QgU
	J74T0LUyPs2hlr/h6/cC+jgEitYnDJGfLo2GKLhuGUtIsuQRova1OSEOGaay6dguut9cWTlCsTrl4
	TmBV+m+3GcSiMI8m4GQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58oG-0003Sx-KX; Fri, 21 Feb 2020 13:57:40 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58o6-0003QB-H2
 for linux-mtd@lists.infradead.org; Fri, 21 Feb 2020 13:57:32 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E0FC9C6B6B8C4734654A;
 Fri, 21 Feb 2020 21:57:10 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 21 Feb 2020
 21:57:00 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <richard@nod.at>, <s.hauer@pengutronix.de>, <yi.zhang@huawei.com>
Subject: [PATCH] ubifs: Don't discard nodes in recovery when ecc err detected
Date: Fri, 21 Feb 2020 22:04:13 +0800
Message-ID: <1582293853-136727-1-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_055730_732896_AFEC464D 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBwcm9jZXNzIHdpbGwgbGVhZCBUTkMgdG8gZmluZCBubyBjb3JyZXNwb25k
aW5nIGlub2RlIG5vZGUKKFJlcHJvZHVjZSBtZXRob2Qgc2VlIExpbmspOgoKICAxLiBHYXJiYWdl
IGNvbGxlY3Rpb24uCiAgICAgMSkgbW92ZSB2YWxpZCBpbm9kZSBub2RlcyBmcm9tIGxlYiBBIHRv
IGxlYiBCCiAgICAgICAgKFRoZSBsZWIgbnVtYmVyIG9mIEIgaGFzIGJlZW4gd3JpdHRlbiBhcyBH
QyB0eXBlIGJ1ZCBub2RlIGluIGxvZykKICAgICAyKSB1bm1hcCBsZWIgQSwgYW5kIGNvcnJlc3Bv
bmRpbmcgcGViIGlzIGVyYXNlZAogICAgICAgIChHQ2VkIGlub2RlIG5vZGVzIGV4aXN0IG9ubHkg
b24gbGViIEIpCiAgMi4gUG93ZXJvZmYuIEEgbm9kZSBuZWFyIHRoZSBlbmQgb2YgdGhlIExFQiBp
cyBjb3JydXB0ZWQgYmVmb3JlIHBvd2VyCiAgICAgb24sIHdoaWNoIGlzIHVuY29ycmVjdGFibGUg
ZXJyb3Igb2YgRUNDLgogIDMuIFJlcGxheSBhbmQgcmV0dXJuIHN1Y2Nlc3MuCiAgICAgMSkgcmVw
bGF5X2J1ZHMgLT4gYnVkIGZvciBsZWIgQiBpcyB0aGUgbGFzdCBHQyB0eXBlIHJlY29yZCBpbiBs
b2cKICAgICAyKSB1Ymlmc19yZWNvdmVyX2xlYjoKICAgICAgICBGb3IgU0NBTk5FRF9BX0NPUlJV
UFRfTk9ERSBlcnJvciBjYXVzZWQgYnkgbm9kZV9CLCBVQklGUyB3aWxsCiAgICAgICAgZGlzY2Fy
ZCBub2RlX0EgLi4uIG5vZGVfQywgc3VjaCBub2RlcyBhcmUgaW4gdGhlIHNhbWUgbWF4X2lvIHVu
aXQuCgogICAgICAgICAgICAgICBjb3JydXB0CiAgICAgICAgICAgICAgICAgIOKGkwogICAgICAg
IG5vZGVfQSAgbm9kZV9CIC4uLiBub2RlX0MKICAgICAgICBYWFhYWFhYWFhYWFhYWFhYWFhYWFhY
WFhYICBYWFhYWFguLi4gICDihpAgUmVwbGF5IEdDIExFQgogICAgICAgIHzihpAgICBtYXhfd3Jp
dGVfc2l6ZSAgICDihpJ8CiAgIDQuIEZpbmRpbmcgYSBtaXNzaW5nIGlub2RlIG5vZGUgdHJpZ2dl
cnMgYW4gZXJyb3IsIGFzIGZvbGxvd3M6CiAgICAgIFsgMjI3Ni45OTI1NTddIFVCSUZTIGVycm9y
ICh1YmkwOjAgcGlkIDI1MDkpOiB1Ymlmc19yZWFkX25vZGUKICAgICAgW3ViaWZzXTogYmFkIG5v
ZGUgdHlwZSAoMjU1IGJ1dCBleHBlY3RlZCAyKQogICAgICBbIDIyNzYuOTk2ODE0XSBVQklGUyBl
cnJvciAodWJpMDowIHBpZCAyNTA5KTogdWJpZnNfcmVhZF9ub2RlCiAgICAgIFt1Ymlmc106IGJh
ZCBub2RlIGF0IExFQiAxNTo3MzcyOCwgTEVCIG1hcHBpbmcgc3RhdHVzIDAKICAgICAgWyAyMjc2
Ljk5ODQzOV0gTm90IGEgbm9kZSwgZmlyc3QgMjQgYnl0ZXM6CiAgICAgIFsgMjI3Ni45OTg0NDJd
IDAwMDAwMDAwOiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZgoKRml4IHRoaXMg
YnkgcmV0dXJuaW5nIGZhaWwgd2hlbiBzY2FuIGJhZCBkYXRhIHdpdGggZWNjIGVycm9yIGRldGVj
dGVkIGluCnViaWZzX3JlY292ZXJfbGViKCkuIFRoaXMgcmVkdWNlcyB0aGUgZmF1bHQgdG9sZXJh
bmNlIG9mIHRoZSBmaWxlIHN5c3RlbS4KSW4gdGhlIGNhc2Ugb2YgcGFkIG5vZGUgZWNjIGVycm9y
IGF0IHRoZSBlbmQgb2YgTEVCIHdpdGhvdXQgYWZmZWN0aW5nIHRoZQpmaWxlIHN5c3RlbSBkYXRh
LCBpdCBhbHNvIHJldHVybnMgZmFpbCwgYnV0IHRoZSBwcm9iYWJpbGl0eSBpcyB2ZXJ5IGxvdy4K
ClNpZ25lZC1vZmYtYnk6IFpoaWhhbyBDaGVuZyA8Y2hlbmd6aGloYW8xQGh1YXdlaS5jb20+CkNj
OiA8U3RhYmxlQHZnZXIua2VybmVsLm9yZz4KRml4ZXM6IDFlNTE3NjRhM2MyYWMwNWEyM2EyMmIy
YTk1ICgiVUJJRlM6IGFkZCBuZXcgZmxhc2ggZmlsZSBzeXN0ZW0iKQpMaW5rOiBodHRwczovL2J1
Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNjYyNQotLS0KIGZzL3ViaWZzL3Jl
Y292ZXJ5LmMgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZnMvdWJpZnMvcmVjb3ZlcnkuYyBiL2ZzL3ViaWZzL3JlY292ZXJ5LmMKaW5kZXggZjEx
NmY3YjNmOWU1Li5lNjBmMjNlYTQ1NzUgMTAwNjQ0Ci0tLSBhL2ZzL3ViaWZzL3JlY292ZXJ5LmMK
KysrIGIvZnMvdWJpZnMvcmVjb3ZlcnkuYwpAQCAtNjI0LDE0ICs2MjQsMjggQEAgc3RydWN0IHVi
aWZzX3NjYW5fbGViICp1Ymlmc19yZWNvdmVyX2xlYihzdHJ1Y3QgdWJpZnNfaW5mbyAqYywgaW50
IGxudW0sCiB7CiAJaW50IHJldCA9IDAsIGVyciwgbGVuID0gYy0+bGViX3NpemUgLSBvZmZzLCBz
dGFydCA9IG9mZnMsIG1pbl9pb191bml0OwogCWludCBncm91cGVkID0gamhlYWQgPT0gLTEgPyAw
IDogYy0+amhlYWRzW2poZWFkXS5ncm91cGVkOworCWludCBlY2NfZXJyID0gMDsKIAlzdHJ1Y3Qg
dWJpZnNfc2Nhbl9sZWIgKnNsZWI7CiAJdm9pZCAqYnVmID0gc2J1ZiArIG9mZnM7CiAKIAlkYmdf
cmN2cnkoIiVkOiVkLCBqaGVhZCAlZCwgZ3JvdXBlZCAlZCIsIGxudW0sIG9mZnMsIGpoZWFkLCBn
cm91cGVkKTsKIAotCXNsZWIgPSB1Ymlmc19zdGFydF9zY2FuKGMsIGxudW0sIG9mZnMsIHNidWYp
OwotCWlmIChJU19FUlIoc2xlYikpCi0JCXJldHVybiBzbGViOworCXNsZWIgPSBremFsbG9jKHNp
emVvZihzdHJ1Y3QgdWJpZnNfc2Nhbl9sZWIpLCBHRlBfTk9GUyk7CisJaWYgKCFzbGViKQorCQly
ZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKworCXNsZWItPmxudW0gPSBsbnVtOworCUlOSVRfTElT
VF9IRUFEKCZzbGViLT5ub2Rlcyk7CisJc2xlYi0+YnVmID0gc2J1ZjsKKworCWVyciA9IHViaWZz
X2xlYl9yZWFkKGMsIGxudW0sIHNidWYgKyBvZmZzLCBvZmZzLCBjLT5sZWJfc2l6ZSAtIG9mZnMs
IDApOworCWlmIChlcnIgJiYgZXJyICE9IC1FQkFETVNHKSB7CisJCXViaWZzX2VycihjLCAiY2Fu
bm90IHJlYWQgJWQgYnl0ZXMgZnJvbSBMRUIgJWQ6JWQsIGVycm9yICVkIiwKKwkJCSAgYy0+bGVi
X3NpemUgLSBvZmZzLCBsbnVtLCBvZmZzLCBlcnIpOworCQlrZnJlZShzbGViKTsKKwkJcmV0dXJu
IEVSUl9QVFIoZXJyKTsKKwl9IGVsc2UgaWYgKGVyciA9PSAtRUJBRE1TRykKKwkJZWNjX2VyciA9
IDE7CiAKIAl1Ymlmc19hc3NlcnQoYywgbGVuID49IDgpOwogCXdoaWxlIChsZW4gPj0gOCkgewpA
QCAtNjc3LDEwICs2OTEsMjQgQEAgc3RydWN0IHViaWZzX3NjYW5fbGViICp1Ymlmc19yZWNvdmVy
X2xlYihzdHJ1Y3QgdWJpZnNfaW5mbyAqYywgaW50IGxudW0sCiAJfQogCiAJaWYgKHJldCA9PSBT
Q0FOTkVEX0dBUkJBR0UgfHwgcmV0ID09IFNDQU5ORURfQV9CQURfUEFEX05PREUpIHsKLQkJaWYg
KCFpc19sYXN0X3dyaXRlKGMsIGJ1Ziwgb2ZmcykpCisJCS8qCisJCSAqIElmIHRoZSBnYXJiYWdl
IGFyZWEgb3IgYmFkIHBhZCBub2RlIGlzIGNhdXNlZCBieSBlY2MKKwkJICogZXJyb3IsIHNraXBw
aW5nIHZhbGlkIG5vZGVzIGluIHRoZSBhbGlnbmVkIG1heCB3cml0ZQorCQkgKiBzaXplIHVuaXQg
d2lsbCBsZWFkIHRuYyB0byBtaXNtYXRjaCBub2RlIChpbm9kZSwKKwkJICogZGF0YSwgZXRjLiku
IEJ1dCBpZiB0aGUgZWNjIGVycm9yIGluZmVjdHMgb25seSBhIHBhZAorCQkgKiBub2RlLCB3aGlj
aCBkb2Vzbid0IGNvcnJ1cHQgZGF0YSBub2RlcyBvbiBVQklGUywgc3RpbGwKKwkJICogZmFpbGVk
LiBXZSBjaG9vc2Ugcm9idXN0bmVzcyBoZXJlIGF0IHRoZSBjb3N0IG9mCisJCSAqIGdpdmluZyB1
cCB0b2xlcmF0aW5nIHNvbWUgc21hbGwgcHJvYmFiaWxpdHkgbWlzdGFrZXMuCisJCSAqLworCQlp
ZiAoIWlzX2xhc3Rfd3JpdGUoYywgYnVmLCBvZmZzKSB8fCBlY2NfZXJyKQogCQkJZ290byBjb3Jy
dXB0ZWRfcmVzY2FuOwogCX0gZWxzZSBpZiAocmV0ID09IFNDQU5ORURfQV9DT1JSVVBUX05PREUp
IHsKLQkJaWYgKCFub19tb3JlX25vZGVzKGMsIGJ1ZiwgbGVuLCBsbnVtLCBvZmZzKSkKKwkJLyoK
KwkJICogSWYgdGhlIGNvcnJ1cHQgbm9kZSBpcyBjYXVzZWQgYnkgZWNjIGVycm9yLCBza2lwcGlu
ZworCQkgKiB2YWxpZCBub2RlcyBpbiB0aGUgYWxpZ25lZCBtYXggd3JpdGUgc2l6ZSB1bml0IHdp
bGwKKwkJICogbGVhZCB0bmMgdG8gbWlzbWF0Y2ggbm9kZSAoaW5vZGUsIGRhdGEsIGV0Yy4pLgor
CQkgKi8KKwkJaWYgKCFub19tb3JlX25vZGVzKGMsIGJ1ZiwgbGVuLCBsbnVtLCBvZmZzKSB8fCBl
Y2NfZXJyKQogCQkJZ290byBjb3JydXB0ZWRfcmVzY2FuOwogCX0gZWxzZSBpZiAoIWlzX2VtcHR5
KGJ1ZiwgbGVuKSkgewogCQlpZiAoIWlzX2xhc3Rfd3JpdGUoYywgYnVmLCBvZmZzKSkgewpAQCAt
NzgyLDcgKzgxMCw4IEBAIHN0cnVjdCB1Ymlmc19zY2FuX2xlYiAqdWJpZnNfcmVjb3Zlcl9sZWIo
c3RydWN0IHViaWZzX2luZm8gKmMsIGludCBsbnVtLAogCXViaWZzX3NjYW5uZWRfY29ycnVwdGlv
bihjLCBsbnVtLCBvZmZzLCBidWYpOwogCWVyciA9IC1FVUNMRUFOOwogZXJyb3I6Ci0JdWJpZnNf
ZXJyKGMsICJMRUIgJWQgc2Nhbm5pbmcgZmFpbGVkIiwgbG51bSk7CisJdWJpZnNfZXJyKGMsICJM
RUIgJWQgc2Nhbm5pbmcgZmFpbGVkJXMiLCBsbnVtLAorCQkgIGVjY19lcnIgPyAiLCBlY2MgZXJy
b3IgZGV0ZWN0ZWQhIiA6ICIiKTsKIAl1Ymlmc19zY2FuX2Rlc3Ryb3koc2xlYik7CiAJcmV0dXJu
IEVSUl9QVFIoZXJyKTsKIH0KLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB74198692
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 23:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0DsXisNUW72wIzU+HlgVkkX7/Y6pl4bcKDiSDwGC5A=; b=cTVvnjTTzCRt/K
	WSxqp2ml4nHynVx8VaDMZnTp/cE4f1oQ/5yn1kVg0LxIJjl/N4Idenkp7ebCAReLcEkWAo9vi09f2
	PSDezmExv6wJckfciL3Ks/aW1Nd+EVLE8+WkqgfB3WtfXbgOigNfsP2NxIGLyb9u0R5wv47MTyaLD
	qS/shm6UsNnRrFAZbzgmwytq15B9M8q3aOj56f5Y+KMwKxWvQD4F4J7snnCA9HeL0auGgePea2GXH
	r4wo9XTTeHHr1OnO+sokXPfLQ71jyawo2VWdqa5oRRa/He5MCb/ZnrySjOaLxph7g7JfK7gZj2Pbj
	QSrRTLCsRbc7/Kp5hFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ20M-0002r1-53; Mon, 30 Mar 2020 21:31:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ20D-0002qD-KI
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 21:31:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id a81so417554wmf.5
 for <linux-mtd@lists.infradead.org>; Mon, 30 Mar 2020 14:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LIGpKkpwpLZ2Geg9aH+t4dAbGUmN4uvok5TTfT5PwTI=;
 b=DvhBXdl+iyu0EYDDJ0yhX0v65fzLwm4DkFTMcpJbFbjoGvjM0AiBhwsig94ThTnTd6
 f9SM3KSh0ZeqAhC5IBZqA67SJn1TBpkVuOejkpYH4M0EZEtCLAvcAtto8gKpMmXUNKDZ
 Gqlg7dkEBTeK41Q2DI0gDvk6M32DPg0tqqbIHdCJsTlOEXgXaMrdy0CWW3Nz2vlfQQsk
 842rJOxnhceo3AkZWfdMqjF70Ic0/nUyNZePINFipYu76zmdb6EefatyBTuaRh813tTy
 YY4D2r5nwPTYgPUvKOn2T8opED4nFcoLSlTLQHS6m2AO1oxqi4/l+wZ98MeQEEPqvSGW
 hkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LIGpKkpwpLZ2Geg9aH+t4dAbGUmN4uvok5TTfT5PwTI=;
 b=QMYob8uJwjt+W0Qj03jaagX2klcB2UtHJG33I4WDze2Hp+6yv8wGLq8lEueR8eG6ok
 bcQMoJ9bfUThFCauPx2XlhiMJDiRABEEEtWvyek4k5JQGZLlf3pYRMIE4pwrOPXs/jsN
 p0aHgpFlkWaU4YLEl1it4ezyRjr1ODGMxrxCBf3vCG2deO3HcmXn2i/M0apccL1rMbIO
 dUMjZHcX7f94brQXNYDiIhbEhH7dBjLfDSp+0edHyxGimQBntfZA+ku1i6s9MGKa9otP
 8m3t9dfCyq6tPdVSrPivN3WoiisPPN97h0gaH86+DBvIBC5NECPkLkXlmTfGFGSc/jrA
 5v1Q==
X-Gm-Message-State: ANhLgQ0VRBh8asMtvlb95Vgh1ypOhAZojSpxJB/BJRNR34qO55CG7mHv
 JpxAraZ4SqcYMgn+S+GxMGZRCaumCH/XAapDgps=
X-Google-Smtp-Source: ADFU+vuizSyENJa4OMAkuycV5Ytjy9Xu98MOogA3NxEMy7IWD55ocS/T1r3oMjK8ZiFcLM1nJsh/crrhb9EM6aVkGoY=
X-Received: by 2002:a05:600c:257:: with SMTP id 23mr66565wmj.155.1585603884358; 
 Mon, 30 Mar 2020 14:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200116153607.11910-1-fishland@aliyun.com>
In-Reply-To: <20200116153607.11910-1-fishland@aliyun.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 30 Mar 2020 23:31:12 +0200
Message-ID: <CAFLxGvzbjTTaoquNb6jZTpSRXYV5=XfAfxg7Be6Cfyqsw+-Gig@mail.gmail.com>
Subject: Re: [PATCH] ubifs: Fix out-of-bounds memory access caused by abnormal
 value of node_len
To: Liu Song <fishland@aliyun.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_143125_688897_702E2A9C 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, liu.song11@zte.com.cn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMTYsIDIwMjAgYXQgNDozNyBQTSBMaXUgU29uZyA8ZmlzaGxhbmRAYWxpeXVu
LmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBMaXUgU29uZyA8bGl1LnNvbmcxMUB6dGUuY29tLmNuPgo+
Cj4gSW4g4oCcdWJpZnNfY2hlY2tfbm9kZeKAnSwgd2hlbiB0aGUgdmFsdWUgb2YgIm5vZGVfbGVu
IiBpcyBhYm5vcm1hbCwKPiB0aGUgY29kZSB3aWxsIGdvdG8gbGFiZWwgb2YgIm91dF9sZW4iIGZv
ciBleGVjdXRpb24uIFRoZW4sIGluIHRoZQo+IGZvbGxvd2luZyAidWJpZnNfZHVtcF9ub2RlIiwg
aWYgaW5vZGUgdHlwZSBpcyAiVUJJRlNfREFUQV9OT0RFIiwKPiBpbiAicHJpbnRfaGV4X2R1bXAi
LCBhbiBvdXQtb2YtYm91bmRzIGFjY2VzcyBtYXkgb2NjdXIgZHVlIHRvIHRoZQo+IHdyb25nICJj
aC0+bGVuIi4KPgo+IFRoZXJlZm9yZSwgd2hlbiB0aGUgdmFsdWUgb2YgIm5vZGVfbGVuIiBpcyBh
Ym5vcm1hbCwgZGF0YSBsZW5ndGgKPiBzaG91bGQgdG8gYmUgYWRqdXN0ZWQgdG8gYSByZWFzb25h
YmxlIHNhZmUgcmFuZ2UuIEF0IHRoaXMgdGltZSwKPiBzdHJ1Y3R1cmVkIGRhdGEgaXMgbm90IGNy
ZWRpYmxlLCBzbyBkdW1wIHRoZSBjb3JydXB0ZWQgZGF0YSBkaXJlY3RseQo+IGZvciBhbmFseXNp
cy4KPgo+IFNpZ25lZC1vZmYtYnk6IExpdSBTb25nIDxsaXUuc29uZzExQHp0ZS5jb20uY24+CgpB
cHBsaWVkLCB0aGFua3MhCgotLSAKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tdGQvCg==

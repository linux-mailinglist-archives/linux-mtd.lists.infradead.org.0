Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB12C189D
	for <lists+linux-mtd@lfdr.de>; Sun, 29 Sep 2019 19:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lFRpJJYrXKon4IlJquLPAhk7iIrHn3QzkMaybjx5+M=; b=Rd7gkPglVOIspL
	3GwK2S0nCGGVfhXxZNPeoDJo88aB3K58voMFkNJCumgUpHyAbGqQ+1iTe5Cr5Rw+xWq7RZr1cNKdg
	9U2UvvvxnTNN0HCaFK0zANw63oX6OmBaCZKQfNz0hYQvY9MrehU7vlAwa4IdUyKHuxpV6Kw7rBvXs
	qgdx5tvSq0++CkKZl8WhlgrAzymhZNNRQtO3Hzxwh5pqCMoWbXffUKExK3em/JhHSSqsd+fktK8XK
	t6UBbEDCax1PFJgVVg7XhBN3hJfNPodBs+0hWrA7Qv0lEsuspBckBhvKav3L4KxCwG0mLx8JfvWvy
	Dy8BpAkFZmYrUgNhHy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdGd-0008TQ-Sa; Sun, 29 Sep 2019 17:45:55 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdBv-0003UV-Eg
 for linux-mtd@lists.infradead.org; Sun, 29 Sep 2019 17:41:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 959106075EB4;
 Sun, 29 Sep 2019 19:40:58 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VlioET44_eHW; Sun, 29 Sep 2019 19:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 20B03609D2EB;
 Sun, 29 Sep 2019 19:40:58 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DwvmC1lw3UpI; Sun, 29 Sep 2019 19:40:58 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id E5A9C609D2D8;
 Sun, 29 Sep 2019 19:40:57 +0200 (CEST)
Date: Sun, 29 Sep 2019 19:40:57 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Jan Kardell <jan.kardell@telliq.com>
Message-ID: <2011338513.9985.1569778857747.JavaMail.zimbra@nod.at>
In-Reply-To: <f07e281f-a8e1-b4f8-de4a-264501f565f5@telliq.com>
References: <CAF_dkJA2DFr3Vgk5ie=V5YitZr8HaiXWuQ+SKsHzzmLBFnhyeg@mail.gmail.com>
 <23922253.ayd0uQntjt@blindfold>
 <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
 <CAFLxGvxoR2kWoEz38QfO2sZDh4=4KXHBm9OrzXAQJWAR8Shmew@mail.gmail.com>
 <CAO1O6sdEw2xjmKQFEA6YXE5vLAtd90ew4t_zynRUvK_ZztDp0w@mail.gmail.com>
 <CAFLxGvxT3qDJT+7T4DQOq2j45OPV1AuvErEaYfpLP6SH7LX0OQ@mail.gmail.com>
 <f07e281f-a8e1-b4f8-de4a-264501f565f5@telliq.com>
Subject: Re: [PATCH 1/1] ubi: Allow ubiblock devices nodes to be created by
 volume name instead of volume ID.
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Allow ubiblock devices nodes to be created by volume name
 instead of volume ID.
Thread-Index: 0aV2wDwUczACxzY9SK2ZwqK4dGvJtg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_104103_698597_5CEA6BFF 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Emil Lenngren <emil.lenngren@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Patrick Doyle <wpdster@gmail.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkphbiBLYXJkZWxsIiA8amFu
LmthcmRlbGxAdGVsbGlxLmNvbT4KPiBJIGhhdmUgdGhpcyBvbiBteSBjbWRsaW5lOgo+IAo+IHJv
b3Q9dWJpMDpyb290ZnMgcncgdWJpLm10ZD1yb290ZnMsMjA0OCByb290ZnN0eXBlPXViaWZzCj4g
Cj4gTWF5YmUgYSBiaXQgY29uZnVzaW5nIHRoYXQgYm90aCB0aGUgTVREIHBhcnRpdGlvbiBhbmQg
dGhlIFVCSSB2b2x1bWUgYXJlCj4gbmFtZWQgcm9vdGZzOi0pIFRoZSBib2FyZCB1c2VzIGEgdmVy
eSBvbGQgMy4xNCBrZXJuZWwgZnJvbSBPcGVuV3J0LCBJCj4gYmVsaWV2ZSB0aGUgTVREIHBhcnRz
IGlzIHZhbmlsbGEuIERvZXNuJ3QgdGhpcyB3b3JrIG9uIGEgbW9yZSByZWNlbnQga2VybmVsPwoK
SG93IGlzIHRoaXMgcmVsYXRlZCB0byB1YmlibG9jaz8KCkFueXdheSwgeW91ciBjbWRsaW5lIHNo
b3VsZCB3b3JrLgpJZiBpdCB1c2VkIHRvIHdvcmsgb24gYW4gb2xkZXIgKHZhbmlsbGEhKSBrZXJu
ZWwgYW5kIGlzIG5vdyBicm9rZW4sCml0IGlzIGEgcmVncmVzc2lvbiB3aGljaCBuZWVkcyBmaXhp
bmcuIDotKQoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D3017DC30
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 10:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vaTa6ttI1WQewlacYkdTsO6h/vKoDJuBb8Kqi5kXQb8=; b=Xsu
	wFZD1TsNDqb/AbLWCFbtAgzlRVeHcIYQKr800ldUiOAtseiHNy3rwYkzyslFqkhkQaR6ij7++LXUD
	1ZRJ2hxGzhbfBbpeQXxE2jSsOsZceLtcsAvXPF4Lt4mOhtGBqbveLgzySsUV73iiupXGZnKdxWJyB
	WKvXL5T2zXant8mZrohInSPv0zFPxsyCwMw4d7oH8LXPxiRNlLVGZnp1T6s7WM980TEf9KztwyWPS
	h9EqkFv/Pe+CxKxR/KSYdKIrVVRMEhNOaAxGyneAmfa1cr7nsihpFbIa29GJPUdK+ZmYOk+nXO7Zf
	FJMe7oDaDtBvtReFGZo3SCkkKcOoVyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBESn-0003ES-FD; Mon, 09 Mar 2020 09:12:41 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBESf-0003E2-6Z
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 09:12:34 +0000
Received: by mail-vs1-xe44.google.com with SMTP id o24so2055510vsp.4
 for <linux-mtd@lists.infradead.org>; Mon, 09 Mar 2020 02:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=c/mZkIa4u1GFEY/oYjmFc+FR8PHQ8RKEpzXuSA50f5s=;
 b=lOKMe5cqvRHQRP6qN1gkJw8i2KSK1UVTuoce46/ldJqmIRCesrJmbvOzWwPjbwoykF
 3lUq39pm2a3fe9JjLZgSlHpsU1rAxTO0PhiS1me3pPHAt2ftNKBpWec49FecTJe7N/f3
 eQAtXGx1caRMyozZx4Q/gbhn2dSo7pLL59boHzfAhX/vaCkz43RDubi18grXYKgWutJu
 F+ixqniyRcFsNBf8QoubAy0vT6sNndD1lNsJiHJY7cyU20HmJwV9QuayyLspHXfH8Oas
 2zx/KPVl077LKl6nqIslhWLKs3p5rX0eILb98VU72aTAL0yPqfTa8cZBGLBBb8n3cY48
 V+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=c/mZkIa4u1GFEY/oYjmFc+FR8PHQ8RKEpzXuSA50f5s=;
 b=gP86166u0Pv4Kxww/T0C9H2rsH42wIheNpqWSFXdHIrjYGzR4QLqBrJ736K5fXoyo0
 pfal3NH3wKWyAJXpPWp9mKW302mKNcssExp3i8HGlL0ATNfM+3bS3xFylLfjIg+PRALb
 rQO23dz4h792reWhSbgQ7K2Fg2Nj/AnfUsn374LMAjbwasyTzVgKbt77pyjtuV6S8KPv
 c7PlMW9nfWoFrOl35XHOHyY9QQeHuj12H9ntEIgI3iiFLWfOpk4Odg3VdhhcgCkSvpkn
 DUu7V/9VJ3OmLixSVc307t3sgKYgY1rBkyllOkfAxSdHtocMmhAIxrLgMDsHui7kVhMQ
 i0ag==
X-Gm-Message-State: ANhLgQ3/Xy8JvTmlklFxT0vwbKcFUP6iQ2dgVgSaQcoLxLVbtO28/5wT
 +nSprGvcZQpiIDWr1evKk1Ij+uL0S5knEa0jxSc=
X-Google-Smtp-Source: ADFU+vvYJNAX5RxgeO3nbXD6F/AZEp6IUwmW1464GQY03Rr90N+UJh5Os2HL3Bc9KaDLNdt2ENWAK5yMfJUhu25/1ds=
X-Received: by 2002:a67:e98e:: with SMTP id b14mr9486817vso.106.1583745151519; 
 Mon, 09 Mar 2020 02:12:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:d84:0:0:0:0:0 with HTTP;
 Mon, 9 Mar 2020 02:12:30 -0700 (PDT)
From: robert <ggrosetzoer@gmail.com>
Date: Mon, 9 Mar 2020 02:12:30 -0700
Message-ID: <CA+pkVC6RPAP_KiwOLueUbZiP_ZxvJOuknGT_MrQNHpW6yy1vkw@mail.gmail.com>
Subject: good
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_021233_243797_694EFB9F 
X-CRM114-Status: UNSURE (   0.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ggrosetzoer[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 MIXED_ES               Too many es are not es
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

MTE1Mi81MDAwDQoqINCS0L3QuNC80LDQvdC40LU6INCx0LXQvdC10YTQuNGG0LjQsNGAICoNCg0K
KiDQodC+0L7QsdGJ0LjRgtC1LCDRh9GC0L4g0LzRiyDQv9C+0LvRg9GH0LjQu9C4INGD0YLQstC1
0YDQttC00LXQvdC90YvQuSDRhNCw0LnQuyDQvtC/0LvQsNGC0Ysg0L7RgiBGRURFUkFMDQrQnNCY
0J3QmNCh0KLQldCg0KHQotCS0J4g0KTQmNCd0JDQndCh0J7QkiDRgdC+0LLQvNC10YHRgtC90L4g
0YEg0JzQtdC20LTRg9C90LDRgNC+0LTQvdGL0Lwg0LLQsNC70Y7RgtC90YvQvCDRhNC+0L3QtNC+
0LwgKNCc0JLQpCkNCtC60L7QvNC/0LXQvdGB0LDRhtC40Y8g0LbQtdGA0YLQstCw0Lwg0LzQvtGI
0LXQvdC90LjRh9C10YHRgtCy0LAg0Lgg0LLQsNGIINCw0LTRgNC10YEg0Y3Qu9C10LrRgtGA0L7Q
vdC90L7QuSDQv9C+0YfRgtGLINCy0YXQvtC00LjRgiDQsiDRgdC/0LjRgdC+0LoNCtC20LXRgNGC
0LLRiy4gKg0KDQoqINCvINC/0LjRiNGDLCDRh9GC0L7QsdGLINGB0L7QvtCx0YnQuNGC0Ywg0LLQ
sNC8LCDRh9GC0L4g0LzRiyDQsdGD0LTQtdC8INC+0YLQv9GA0LDQstC70Y/RgtGMINCy0LDQvCAk
IDUwMDAuMDBVU0QNCtC10LbQtdC00L3QtdCy0L3QviDRgQ0K0L3QsNGIINC+0YTQuNGBINC30LTQ
tdGB0YwsINGC0LDQuiDQutCw0Log0LzRiyDQv9C+0LvRg9GH0LjQu9C4INC80LDQvdC00LDRgiDQ
vdCwINC/0LXRgNC10LTQsNGH0YMg0LLQsNGI0LXQs9C+INC/0L7Qu9C90L7Qs9C+DQrQutC+0LzQ
v9C10L3RgdCw0YbQuNC+0L3QvdGL0Lkg0L/Qu9Cw0YLQtdC2INCyINGA0LDQt9C80LXRgNC1IDgw
MCAwMDAg0LTQvtC70LvQsNGA0L7QsiDQodCo0JAg0JzQtdC20LTRg9C90LDRgNC+0LTQvdGL0LwN
CtCy0LDQu9GO0YLQvdGL0Lwg0YTQvtC90LTQvtC8DQoo0JzQktCkKSDQuCDQpNC10LTQtdGA0LDQ
u9GM0L3QvtC1INC80LjQvdC40YHRgtC10YDRgdGC0LLQviDRhNC40L3QsNC90YHQvtCyLiDQktCw
0Ygg0LvQuNGH0L3Ri9C5INC40LTQtdC90YLQuNGE0LjQutCw0YbQuNC+0L3QvdGL0Lkg0L3QvtC8
0LXRgA0K0L/RgNC10LTQvtGB0YLQsNCy0LvQtdC90L4g0LrQvtC80LDQvdC00L7QuSBJLk0uRiBD
UFAwOTIwVEcuICoNCg0KKiDQktC+0YIg0LjQvdGE0L7RgNC80LDRhtC40Y8g0L7QsSDQvtC/0LvQ
sNGC0LUsINC60L7RgtC+0YDRg9GOINC80Ysg0LHRg9C00LXQvCDQuNGB0L/QvtC70YzQt9C+0LLQ
sNGC0Ywg0LTQu9GPINC/0LXRgNC10YHRi9C70LrQuCDQstCw0YjQtdCz0L4NCtC10LbQtdC00L3Q
tdCy0L3Ri9C5INC/0LXRgNC10LLQvtC0LiAqDQoNCiog0JjQvNGPINC+0YLQv9GA0LDQstC40YLQ
tdC70Y86INCh0LjQvdGC0LjRjyDQmNC00LXQvSAqDQoqINCS0L7Qv9GA0L7RgTog0J7Qv9C70LDR
gtCwICoNCiog0J7RgtCy0LXRgjog0JTQsCAqDQoqINCh0YPQvNC80LA6IDUgMDAwLDAwINC00L7Q
u9C70LDRgNC+0LIg0KHQqNCQICoNCiog0JPQvtGA0L7QtDog0JvQvtC80LUgKg0KKiDQodGC0YDQ
sNC90LA6INCi0L7Qs9C+ICoNCg0KKiDQn9Cg0JjQnNCV0KfQkNCd0JjQlTogTVRDTiDQsdGD0LTQ
tdGCINC+0YLQv9GA0LDQstC70LXQvSDQstCw0Lwg0L/QvtGB0LvQtSDQstCw0YjQtdCz0L4g0L7R
gtCy0LXRgtCwINC4INC/0L7QtNGC0LLQtdGA0LbQtNC10L3QuNGPDQrQmNC90YTQvtGA0LzQsNGG
0LjRjyDQviDQstCw0YjQtdC8INC/0L7Qu9GD0YfQsNGC0LXQu9C1LCDRh9GC0L7QsdGLINC40LfQ
sdC10LbQsNGC0Ywg0L3QtdC/0YDQsNCy0LjQu9GM0L3QvtC5INC/0LXRgNC10LTQsNGH0LguICoN
Cg0KKiDQnNGLINC20LTQtdC8INCy0LDRiNC10LPQviDRgdGA0L7Rh9C90L7Qs9C+INC+0YLQstC1
0YLQsCDQv9C+INGN0YLQvtC80YMg0LDQtNGA0LXRgdGDDQoobWlzc2N5bnRoaWFlZGVuNTZAZ21h
aWwuY29tIDxtaXNzY3ludGhpYWVkZW41NkBnbWFpbC5jb20+KSwg0YfRgtC+0LHRiyDQv9C+0LfQ
stC+0LvQuNGC0Ywg0L3QsNC8DQrQv9GA0L7QtNC+0LvQttC40YLRjCDQvtC/0LvQsNGC0YMuICoN
Cg0KKtCY0YHQutGA0LXQvdC90LUg0LLQsNGILCoNCg0KKtCg0YPQutC+0LLQvtC00LjRgtC10LvR
jCDRhNC40LvQuNCw0LvQsDoqDQoqINCc0LjRgdGBINCh0LjQvdGC0LjRjyDQmNC00LXQvSAqDQoq
IFZuaW1hbml5ZTogYmVuZWZpdHNpYXIgKg0KDQoqIFNvb2JzaGNoaXRlLCBjaHRvIG15IHBvbHVj
aGlsaSB1dHZlcnpoZGVubnl5IGZheWwgb3BsYXR5IG90IEZFREVSQUwNCk1JTklTVEVSU1RWTyBG
SU5BTlNPViBzb3ZtZXN0bm8gcyBNZXpoZHVuYXJvZG55bSB2YWx5dXRueW0gZm9uZG9tIChNVkYp
DQprb21wZW5zYXRzaXlhIHpoZXJ0dmFtIG1vc2hlbm5pY2hlc3R2YSBpIHZhc2ggYWRyZXMgZWxl
a3Ryb25ub3kgcG9jaHR5DQp2a2hvZGl0IHYgc3Bpc29rDQp6aGVydHZ5LiAqDQoNCiogWUEgcGlz
aHUsIGNodG9ieSBzb29ic2hjaGl0JyB2YW0sIGNodG8gbXkgYnVkZW0gb3RwcmF2bHlhdCcgdmFt
ICQNCjUwMDAuMDBVU0QgeWV6aGVkbmV2bm8gcw0KbmFzaCBvZmlzIHpkZXMnLCB0YWsga2FrIG15
IHBvbHVjaGlsaSBtYW5kYXQgbmEgcGVyZWRhY2h1IHZhc2hlZ28gcG9sbm9nbw0Ka29tcGVuc2F0
c2lvbm55eSBwbGF0ZXpoIHYgcmF6bWVyZSA4MDAgMDAwIGRvbGxhcm92IFNTSEENCk1lemhkdW5h
cm9kbnltIHZhbHl1dG55bSBmb25kb20NCihNVkYpIGkgRmVkZXJhbCdub3llIG1pbmlzdGVyc3R2
byBmaW5hbnNvdi4gVmFzaCBsaWNobnl5DQppZGVudGlmaWthdHNpb25ueXkgbm9tZXINCnByZWRv
c3Rhdmxlbm8ga29tYW5kb3kgSS5NLkYgQ1BQMDkyMFRHLiAqDQoNCiogVm90IGluZm9ybWF0c2l5
YSBvYiBvcGxhdGUsIGtvdG9ydXl1IG15IGJ1ZGVtIGlzcG9sJ3pvdmF0JyBkbHlhDQpwZXJlc3ls
a2kgdmFzaGVnbw0KeWV6aGVkbmV2bnl5IHBlcmV2b2QuICoNCg0KKiBJbXlhIG90cHJhdml0ZWx5
YTogU2ludGl5YSBJZGVuICoNCiogVm9wcm9zOiBPcGxhdGEgKg0KKiBPdHZldDogRGEgKg0KKiBT
dW1tYTogNSAwMDAsMDAgZG9sbGFyb3YgU1NIQSAqDQoqIEdvcm9kOiBMb21lICoNCiogU3RyYW5h
OiBUb2dvICoNCg0KKiBQUklNRUNIQU5JWWU6IE1UQ04gYnVkZXQgb3RwcmF2bGVuIHZhbSBwb3Ns
ZSB2YXNoZWdvIG90dmV0YSBpIHBvZHR2ZXJ6aGRlbml5YQ0KSW5mb3JtYXRzaXlhIG8gdmFzaGVt
IHBvbHVjaGF0ZWxlLCBjaHRvYnkgaXpiZXpoYXQnIG5lcHJhdmlsJ25veSBwZXJlZGFjaGkuICoN
Cg0KKiBNeSB6aGRlbSB2YXNoZWdvIHNyb2Nobm9nbyBvdHZldGEgcG8gZXRvbXUgYWRyZXN1DQoo
bWlzc2N5bnRoaWFlZGVuNTZAZ21haWwuY29tIDxtaXNzY3ludGhpYWVkZW41NkBnbWFpbC5jb20+
KSwgY2h0b2J5DQpwb3p2b2xpdCcgbmFtDQpwcm9kb2x6aGl0JyBvcGxhdHUuICoNCg0KKklza3Jl
bm5lIHZhc2gsKg0KDQoqUnVrb3ZvZGl0ZWwnIGZpbGlhbGE6Kg0KKiBNaXNzIFNpbnRpeWEgSWRl
biAqDQpBZmZpY2hlciBwbHVzDQpFbnZveWVyIGRlcyBjb21tZW50YWlyZXMNCkhpc3RvcmlxdWUN
CkVucmVnaXN0csOpDQpDb21tdW5hdXTDqQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K

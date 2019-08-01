Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9957D6DB
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 10:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2MsLz1ZZ+sRTSmyMY3qJsVI4Pj0NRZpQCuYFtUK7hc=; b=Ux6hItskFjgx71
	AIYnmtBI2ubqT6yeMdmqlrMwYjVcpa0ygpZM6XAayHZ70rkfuSa5fZnCcsk96Xwak543u7i16Lb0/
	mbIBxLftABI2l091OzV6eUjuUP4XbFtDHaWpDky4VpP73jBpzxQhY3x3PjOOofUl//tfzXyC7u5fP
	KKKYEY5Klj/TIqyXdtvKJYyggULRNhBmsC6NLRSoDTCEpwUApKWjv/X/+h5sH6mU4GPDmOw92ctTe
	QnPDQUKooSGkmTQrNAptHQWa/pbRXwfhYAd3pIbRjiF6SMyEEnWQPPWrIvIYJwjMmHkYpbvVU7fax
	b93w4asZB7CPzzhzgigQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht64G-0006aC-BA; Thu, 01 Aug 2019 08:04:08 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht64A-0006Yc-8p
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 08:04:03 +0000
Received: by mail-wr1-x431.google.com with SMTP id x4so19350484wrt.6
 for <linux-mtd@lists.infradead.org>; Thu, 01 Aug 2019 01:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lfmSsBjgul28BwYG9VVxMJIlU5JEg7A1dMxIj0B++OE=;
 b=BNyvhJQKmZXruiXSzzLHHZURMaDUMHeeEM44+qoyuc7S/gOM1n6QWEskO3L1+8s5Cg
 tcczDK8j0Gd9JuAcRxat/pxiSyMZ79qkqtzcDcS4WyLgqo5Jl0H7Axm0XeBuCb64AOs2
 14r/W3ZsZusyxxJEXl0xoUntB/ccb5tofc6oO4jIu9O8zrZKT+uNq2rfjqFoDuVlMrin
 iaRLccZfErcapBR4mOsZk8YRNC2p+yjnetBYBKHwlmqqsC/i+jQlAMaRVfWAAqf9PmAl
 WAIAzSR0MZ6C9MKUwevs+zfY9xeUD1HKJVoSnKvGAgojxfJPzElCDgHzKa5Lliu1J2TA
 WaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lfmSsBjgul28BwYG9VVxMJIlU5JEg7A1dMxIj0B++OE=;
 b=Y2kJH54LkqEgT0BjdUg76Ek2VYkYYqL+Nx6kXyJt5PHNs2Nq4A3DymPn8UiQb85V2Q
 NMdpFsxb/vafm8qEOkfKga9V8hGaaeCvpf8W+dos8FAZRkoNfCx66aTH1ncWHAQOw5SL
 5pzeyXB289RGvF5d6R6cWox916saUsiAWhVBRPwzddJ68WFOExP1BDmM0J6UBiEABLWJ
 JCGzlMTlQrkMZoykd5oYqqBh7vKWmu/9/lbKYg/YpNw2E9mt2Ch1tELei3YM9oOyy8+y
 pm6BihD0TFy95X8EJBHlSUe1J+Gw3t21zy2gxWD8Qyrk2laxXaz224EE7VYmBPjHBp1i
 0U0Q==
X-Gm-Message-State: APjAAAXgSH5ByYjbqvKNy6PjpxsJmAZTzJeAQNICokyMaTejRIb8BeRP
 UYSfmkNGnDJzW4I1NB+ga7U5WLUPdy62TZHCWFM=
X-Google-Smtp-Source: APXvYqyGygH6L4xVyyeldmoda6rHlVFg5yBPbYD3i8bjcPsy006OSiqrOudqsFznPpNeveOcr1CqhJJhIIVppaNJvdQ=
X-Received: by 2002:a5d:514f:: with SMTP id u15mr3307621wrt.183.1564646639952; 
 Thu, 01 Aug 2019 01:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxq0fNSWrUFMmmTs8Ri9gFOvS+KQJvZN3-_KuiqXi9bbmCB0Q@mail.gmail.com>
In-Reply-To: <CAMxq0fNSWrUFMmmTs8Ri9gFOvS+KQJvZN3-_KuiqXi9bbmCB0Q@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 1 Aug 2019 10:03:48 +0200
Message-ID: <CAFLxGvz92UR2M7KJ_dMMW-F47_pLLxSTOrGwdQ5Cc0kuSiTA8Q@mail.gmail.com>
Subject: Re: UBIFS ECC errors
To: Sergeant Peppercorn <speppercorn109@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_010402_337969_5EC2325A 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 6:24 PM Sergeant Peppercorn
<speppercorn109@gmail.com> wrote:
> UBIFS error (pid 1): ubifs_recover_leb: corrupt empty space LEB
> 7:2048, corruption starts at 2241

This is a good hint. Can it be that your empty space shows bitflips?
In the last years many drivers needed fixes to deal with btiflips in empty space
since ECC cannot fix these.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

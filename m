Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E6C5D0ED
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jul 2019 15:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHXWSGi779HASuW8qjdCHndgP1ReCoqXMNQPpYQXAIw=; b=IrreEqNjZ1iKMD
	Jm9OmkP/GcfT299+2Q891ObKeV3VtdHfOlrCTl1OZIaCsye/BpaX6JmTUxqPcy7Oj5J8F6WU20nSt
	Oeiv1pqMlPBFeLFe1NDmbRuUxxmPlGO5QqWAfDnCv3px2CQb12lCTm3B88oikLOxIBcyOVFBuI/h9
	SJe4ZEuk2x9M6CxTuL4c44Urjs56PUJrrUJviv+E3lL2Zz3S03VvzaAaLidrvHfh3rm+ccU9jTe7N
	xNbQwo3OGwsh9JOXL/rqZ7D1LKsDhIG6t40DCvx4A/KkjYPC5NxNS+1XKj5Tr9kK2c3qQZ24zuzfi
	4LIqYVHnShaS6N+0VHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJ5k-00066n-1I; Tue, 02 Jul 2019 13:45:04 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJ5X-00066N-TV
 for linux-mtd@lists.infradead.org; Tue, 02 Jul 2019 13:44:53 +0000
Received: by mail-qk1-x742.google.com with SMTP id b18so13928394qkc.9
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jul 2019 06:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AiNHH5kLF0a5/4W8JVo7tJ00LHYVYNsbbkRzQ50gi+o=;
 b=r4++upSjUBerqcHlHg56rwYAfu0tK+y5Pbtq1VgLa7YWRq/cQfD5qZE/n18jO3v06U
 dKXprarhKDYXAKFn4PfyuiWWLP+MtIaCK1+h+REyeC0Nqiy+KyzPfahEpWGjAs/GRCAW
 SoEUIQYdMJW8JW446Qe1eSLBsKihADrKiMVDV6CGJ1Mfd5kfnc8fzJw0mo8OcOXp0wMt
 ZvLsCRS5WtbbY2JJ8R9oyBSWdr8U/48jak7g9NHCtAIRUewALlOOsepod0+KwvlscqDP
 r6UspE5+UZYJaKoO+5t6JaErJR1RnW+40lSgtVizJn3ZFG9js48BjRSz09Zr73XOINJM
 TOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AiNHH5kLF0a5/4W8JVo7tJ00LHYVYNsbbkRzQ50gi+o=;
 b=Hip3zDM13CK6mUKfpwIt9jAnKwNybWlS40HeoPkUXxXgT7RMWj7Tx41jG+AwV7OKrG
 44uPH1iME3lY1s2R7PRfjz+nkerHAtlJYl3l4NC582c3ngiyeAl6ENRneAxsNMwgE6Mp
 ujdVLj23oB4uMGxoSRqQH6FYVHR5yctMTHwrVMkAktT0ajpP0i427VDrbe6MUSJwKd1f
 v4hqeMIYnExEvyfgHINMfpUgmlACY1d4/EMkZi7bY2VpWYyLNM4D9rHDOTxNJ5qYPADr
 cXBj4za5tXF7eSNINDiHGeF9YjZy81sjKs4K+5S/wkPr3M4OofQDB9IHPx6PeQadOd10
 L1rQ==
X-Gm-Message-State: APjAAAWmL/TDzel7pURKIlZcJx9/1YeK+aqjEaoPqUs6gQZEsc/C9Vzl
 JAI4/m4G9T/RJixlDsJOuf0keRAzLidHUAWQCh4=
X-Google-Smtp-Source: APXvYqyl2L8SickB4Uw/7jG50ilbgF97AWgSOx5lDPLgOAAh4VYDDjdZ0CX+GPw2qJlpv6+vQ7zfKMMGCF09fJbV004=
X-Received: by 2002:a37:a094:: with SMTP id j142mr26058706qke.2.1562075090142; 
 Tue, 02 Jul 2019 06:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <1562005528-22272-1-git-send-email-pdoyle@irobot.com>
 <5180bc0f-2494-880b-747d-2c09b7e24d7a@sigma-star.at>
In-Reply-To: <5180bc0f-2494-880b-747d-2c09b7e24d7a@sigma-star.at>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 2 Jul 2019 09:44:24 -0400
Message-ID: <CAF_dkJD+QtYFovinjSC4ybCTQtujyYrZ7rf45gaApBu=KNp1Cg@mail.gmail.com>
Subject: Re: [PATCH] ubinize: Exit with non-zero exit code on error.
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_064451_955485_D85524F1 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wpdster[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick Doyle <pdoyle@irobot.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 8:43 AM David Oberhollenzer
<david.oberhollenzer@sigma-star.at> wrote:
> Note: The source code uses tabs for indentation. I fixed that in the patch.
Oh! Darn darn darn darn darn!!!!

I noticed that, and I meant to fix it.  I'm sorry.  Thanks for fixing it for me.

--wpd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B261823A2
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 22:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oQ1sJx7cBZISMU2eFqxu4ZuqvIXDB9Ce3+yyaJ4/s8Q=; b=XMompLWwUggoOKELHC4qK8Osuk
	5cSC3An0GbFkoxdyGzzofRVDJ4NrOqJend1Z5J8Dg++wBVk40hJwbbyvaMWIdHyN94pYnBn8O88H+
	Ifgd4+2nadNb6W2XfYeV5cxUQ56k2gBbyQtW1JWzAC6Om1hx8mUkjg+Y36Ct++91QiUujSdblUYNo
	BZuv7yi0eyaMktxmDIUyGZOerwhV+i9NJl3aUp+3ikPi3LBczmVJa2qdwIfESVt3kYKZmsSo5eFne
	D7sbU8HwF/M89cGGJZ93JcHXtY2feQ65MfBzR9OSNLGKleBAA+ga2Nte8d+rQh+aI/BpkeWyNxoaq
	9OdugC4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8Tg-0008DE-G3; Wed, 11 Mar 2020 21:01:20 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8TZ-0008CL-CR
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 21:01:14 +0000
Received: by mail-ot1-x336.google.com with SMTP id s15so3649485otq.8
 for <linux-mtd@lists.infradead.org>; Wed, 11 Mar 2020 14:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ns8pNt/AZp8wxupvpZz8f0DwcEdrB1oGqd8Uvo5RAe8=;
 b=wcg4DTycgUYgJGeSZyCLiV0fkDn+4EynrHMM+im1nbIa6vYp/r3UOqZZ7TsaKBKiyC
 0ZYTmPqii+Y8LoqVVedF9whM6HWzZkuH/gnx9NQsCPAKKi84+6RkQW7qYR+UL/fxv2B9
 ALUc4mkHRf5aYYFvDTqqJxP739wu9N2puF3lDkbmx7qMo9/kAPDC0w/HWeFbddrj0CEp
 Y9X8C71iqQfYEYkjc4+GtAjzW0JBiXllXFWGDcrAOxUSNbSD374AxpWgddIGJ0Re/qsn
 NMc5ezJoftKoUDn+vKcoELN/mENQSjxH3vBnC1JonKcDJQ/P9xLeg2ujGw82f+mfPV36
 2Ryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ns8pNt/AZp8wxupvpZz8f0DwcEdrB1oGqd8Uvo5RAe8=;
 b=LkgezYC9/h7dDxm4yocwnX4aSsM05lc7Hp/U9YbyRJ2/yQnIhHmXjW0csRmIy7ga9g
 6sDQGhX1Th3uRN+jRRy4hXpYEZdqOEC0ZvvtmihChJCjNxAyOCYACtbyl64H1EJ11RzH
 ZPsWpqqmqoOy+qbIIFhuzj3HNXEFIGsWLTY66V4jNQZ6PL4JiIfMULyBtSyJhN1jgBwR
 OJq0oNpoL25ewa8orYniWNgwqC2x6Is0/D9ElykucZoLTBUl0LCRDcnHxRaaoAFaIeu0
 ucQHfq/657rKYskwVpk8n6b6sBjd+3n9vydjFiDg/RqlQ6ZsRuioQ9yvpNenK14knGq0
 hT5w==
X-Gm-Message-State: ANhLgQ1EkzvJgpuvwvXNwxBiIDb7oE1vWaPUCDhy8kqp431/r3jUa/j6
 vbQJZAcrbD5d0SrU2zf9YZN51IWebQ3drtgJt4yGODzCnpHdOw==
X-Google-Smtp-Source: ADFU+vuAdNfqezRWSEX6XeEQkvlQ1RTpfWcSclyZUN9evd71F0+ZW+B+AKxMw4mjVU7HXdD0JPTrify474U7AyU5zCU=
X-Received: by 2002:a9d:3435:: with SMTP id v50mr2499507otb.19.1583960470657; 
 Wed, 11 Mar 2020 14:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHpUXUx8puujULLTtLTDEvEVG+gasJcmj9QxLC5vf69+WzL74g@mail.gmail.com>
 <20200311213120.0141aec0@collabora.com>
In-Reply-To: <20200311213120.0141aec0@collabora.com>
From: Victor Fusco <victor@cartesi.io>
Date: Wed, 11 Mar 2020 18:00:59 -0300
Message-ID: <CAHpUXUzEQ+0auo=MPefrp5cbWb15JDvsU48tFOZ++qbTGcvY2Q@mail.gmail.com>
Subject: Re: Possible regression regarding the name and size of MTD devices on
 kernel 5.5.4
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_140113_569283_A2A51B56 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

On Wed, Mar 11, 2020 at 5:31 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
> Looks like 2 regressions, indeed. Would you mind sending 2 fixes for
> that?

Yes, sure no problem. Which tree/branch should I base the fixes on?
Stable/linux-5.5.y?

Regards,

Victor Fusco

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

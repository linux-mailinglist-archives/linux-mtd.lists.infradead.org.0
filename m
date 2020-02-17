Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80053160E0A
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 10:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tXOw46XEa+zFtevVs65QDEPcrUTdU0+XNewgBwhZE8=; b=WRcvBvz3MUovdo
	rwnTQPQi0wblE5cnV155Tj76ehcI+IBhYD801Qw5KV1499Xp3mIVxmFk0CmceY20tqO2+u6AiKdvl
	2wDS6vbo+Wfkre4XGY3vgH+etWnuMsJxONDW9ExLSSWClkTTrBwGkDPW4VP0xbzj7fb/HKGjcZnLh
	ZzWPjZz8cPRwICeXDhO8w8flhGRvA7LA9gwvPzDSrS05tMgGWVfDwrCBUUoyhu26oxU1RGTOM+j+J
	g7hlcjkkYbMfPcJRM1qXomSo8ollRfI8CBdnLw6XLIIsYDpl9cMKZzQajgBrYa+4rwbyzEV3diy/1
	WF7IoTnGdKols/dlDzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cMw-0004P9-NX; Mon, 17 Feb 2020 09:07:10 +0000
Received: from mail.monom.org ([188.138.9.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cLh-0003d6-Ln
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 09:05:55 +0000
Received: from mail.monom.org (localhost [127.0.0.1])
 by filter.mynetwork.local (Postfix) with ESMTP id 8C9DB500404;
 Mon, 17 Feb 2020 09:57:46 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.monom.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from localhost (b9168f72.cgn.dg-w.de [185.22.143.114])
 by mail.monom.org (Postfix) with ESMTPSA id 5AAC0500305;
 Mon, 17 Feb 2020 09:57:46 +0100 (CET)
Date: Mon, 17 Feb 2020 09:57:46 +0100
From: Daniel Wagner <wagi@monom.org>
To: JH <jupiter.hce@gmail.com>
Subject: Re: Weird UBIFS error to cause connmand crashed in UBIFS volume root
Message-ID: <20200217085746.yctam4w3iscrbuzw@beryllium.lan>
References: <CAA=hcWRLsdqR0wkNXFg0MiCF5WCYm-1oXsQhhBQ20yDzNuqqXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA=hcWRLsdqR0wkNXFg0MiCF5WCYm-1oXsQhhBQ20yDzNuqqXA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_010553_890901_5E18BC71 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: connman <connman@lists.01.org>, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On Sun, Feb 16, 2020 at 08:24:04PM +1100, JH wrote:
> I have been playing kernel mont to UBIFS rootfs volume for several
> days, the kernel can now mount to UBIFS volume root, the system
> services were running fine except the connection manager connmand
> service failed, I restarted it again and again, the connman was always
> crashed and ubifs_read_node: bad node type. Despite the UBIFS errors,
> the system could be still running, I could type shell comands in
> console when connman was stopped.
> 
> I am not clear if UBIFS errors caused connman failure or connman
> caused UBIFS error, and why it always failed in connman, was it
> coincident or was some special in connman man link to other things
> such as udev to cause the issues?

Have you enabled the stats file feature in ConnMan? It's enabled on
default.  Try again with '--disable-stats' and check if it makes a
difference.

Background: ConnMan save networking stats into a ring buffer file. The
file write operations are done via a mmap'ed memory. To avoid data
loss a double buffering approach with an 'atomic' swap is used:

        stats_file_unmap(history_file);
        stats_file_unmap(temp_file);

        close(temp_file->fd);

        unlink(history_file->name);

        err = link(temp_file->name, history_file->name);

        unlink(temp_file->name);

        close(history_file->fd);

        stats_file_cleanup(history_file);
        stats_file_cleanup(temp_file);

IIRC, f2fs is known not to work. Maybe there is also some limits on
ubifs as well.

Thanks,
Daniel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

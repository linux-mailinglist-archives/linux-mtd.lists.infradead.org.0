Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8891A95E8A
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 14:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI9gJSCWwgwpUZg0ilqVNV7W8w0OB/6BUvC4JvY6Ry0=; b=ECZZaw6McgXkQ6
	cZJmjKMf3AReRwhxEjPt1ILPRMmiuHNtSAautp1ByxJ57NnA2P8NmQpt8Hnm1Z7eNPQpuEjjFT2gg
	bC0DKZJGzyzQQKOe7F85v15YmwVD18kVSKHeoNjUF+Ki2P0UJAYQ9c3dSlhYZwIL+JfjGTmAveU/3
	JNp7Ze8m8MGuTb+9kh4aMCIJHkBv7nqrBcYpfz5ZFmY6FTlhgyGFSbtafgj0a3KC7yDIuYx7ZiWlW
	/jMQZyXxmWkEf2jX1dVBhc69SQheLoNmQ3chXeaOVR0l5tsnufLNcVgM/9eNEiPWjxPUC2poKxY0d
	eERS11hzsPBOty2YNxPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03Gj-0004e2-My; Tue, 20 Aug 2019 12:29:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03Fl-0004Px-1X
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 12:28:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id e8so2297159wme.1
 for <linux-mtd@lists.infradead.org>; Tue, 20 Aug 2019 05:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tSR8sb1uotjnjfdOyV2jp4tciGn/c2mOxbn+GtlfYOs=;
 b=Sb8IcfXuDfRdmyL0CRWnFamS5vXoAjqTViv3zIBCL7F76sefcdcrviBEAfc8hUN6mY
 3T2bTygs2djOmtPhghEO8PRH2iKMYaNCw9HCKu3MztXx0199Y3m3lZm7qg1ygnF5ZipV
 9zTNPxjLh3mxv/gSW7AFCAFg96NijzXXkpMMfyZz9iK9Gu8BRzkt5jsP6rSh45v6mZaD
 1Mp00pCMqRSNjKv24+RZJwwcK2onM8os9c3AzSupDq/Y6Tuboo7p5U9mMSviFfCMGbyH
 4/mgJa/JCVh7gCKrE/mr+4oGqLmlc/13oohkYaUKNtCUmwcT0ufYIDDwRe4pOWb9o4KN
 lcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tSR8sb1uotjnjfdOyV2jp4tciGn/c2mOxbn+GtlfYOs=;
 b=iXOmA6XFDo2DDEk5g53KyQdIhM/4BgUBRXGHaqA8HYR3rvzTEoK5nRGK6Z/BN8gTj+
 ewWSNSAk9xbS8Ovth23XIA1pS4im1rWY9lf1eovzm7Ou+FpPSa+vnSHVoQE5OszP9yNz
 AdWMWOOBLnE5meh0BMsZYi9EYR7kDh/ywN1hLGLLpelYUCD6aW+FuPCOliLOVMUDvVhU
 c6kBUos+mZUuiuMbMSGKCDYngMMl/h0BteDhpzX/rQzff5qHx4ZLe4CY8ijdslfCrLFd
 Ih/SeZZvmc1r36Y/Q1N//35icnZOHRL6dLk5+VbKQDOlmUhUiQSKqVih6ZBuKvDM2YOw
 rxzQ==
X-Gm-Message-State: APjAAAWPXtO4Z6d6aK2WEQB3YBdoCYEqgqsD2N1yQnxCu8NTv1o9AKpe
 khnC2Rz63E5jGlJNl5ysn1+U2GajebkGEi2cAqM=
X-Google-Smtp-Source: APXvYqyRVbaXH5E+zsLwPDG0vuC0U7wlFSG7bKGWfN7PgLa4N/DQBhMBCHvfrfvM80hn+6Il6g7uH/noqPunFBw5Yzk=
X-Received: by 2002:a1c:dd8a:: with SMTP id u132mr498571wmg.1.1566304123445;
 Tue, 20 Aug 2019 05:28:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
 <20190818165817.32634-7-deepa.kernel@gmail.com>
 <CAK+_RLmK0Vy79giAZnUCmmivvRT+GLZXyiMqBoFB0_Ed1W8BkA@mail.gmail.com>
In-Reply-To: <CAK+_RLmK0Vy79giAZnUCmmivvRT+GLZXyiMqBoFB0_Ed1W8BkA@mail.gmail.com>
From: Tigran Aivazian <aivazian.tigran@gmail.com>
Date: Tue, 20 Aug 2019 13:28:32 +0100
Message-ID: <CAK+_RL=ZK40XWY_c8wskAwNw8-Q3DY-+B0GoYo0JEVmqxYD7ig@mail.gmail.com>
Subject: Re: [PATCH v8 06/20] fs: Fill in max and min timestamps in superblock
To: Deepa Dinamani <deepa.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052845_528321_C444503A 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aivazian.tigran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 reiserfs-devel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

I see no problems for BFS.
Acked-By: Tigran Aivazian <aivazian.tigran@gmail.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

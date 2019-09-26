Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA3BF492
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Sep 2019 16:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+aJbNKy3C4u9W6LhXhllT/eubyXTVwJrBVtm19/cq0=; b=vDD36UCnE+aXhE
	41tVPQGOYrOEQq6UHZQsKRcMRmUeLuiXyWE64tMLRVajwpDrJb8MZvV67B5RV1yorwq8RuRoUHWF4
	M81sTTtETsFOXqj1Ebin2xSY8NCnbclgsVInr7aAldKKI9+OgEGIGbIzpGFedcuN6KuZc8/yPBvL+
	cYNuVSVCimABKjbPPhCAguVTXr66JKxB/3cbwUjaUrRTCsmgD+zdt+WXojj/rNuRSy1psgX9KIxSE
	c7Sv+oYsPCk1I9tVTmJGkI3gbySZHSddDuVhIp+omAZF6BHrtjau/RQMHKkpQWUJcC1UKbHl/stIX
	T+9nmrQVQdMZRiQLhxtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUKa-0008T0-KF; Thu, 26 Sep 2019 14:01:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUKL-0008ST-Kw
 for linux-mtd@lists.infradead.org; Thu, 26 Sep 2019 14:01:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so2927480wrt.2
 for <linux-mtd@lists.infradead.org>; Thu, 26 Sep 2019 07:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zuOCPbahQZK/QVR/8BEIOZS78AVnpRD1F6+hJm6hIgM=;
 b=mfYJbrUJTBl5hvb3jGlDDeybVVS9k1uN5b4Xj74/UXooCDhqpjgyn50OLtU4uCDUeT
 TjWpBAValsZxG+l0muOjSq1C/lys8Od8BtOSVCGCYVZQ4JWX7IH1PAObyNRL0k0sG3X/
 /Nqi9C334kk7DnwYm/ZZdua3aDXTsR3r4770BWo0WUjO4I3zwd8EfZjfOjkWLv0wO1cl
 9QvoCyk32SN8sRO5z0mUpH8IQYOpQOFQFUihfjVH7gm6j3CvpXLrWa/p3AGXVVpPjWWu
 yNVQtmMFrmp/6Jc2bDaUgZMRm0Z+qIF7fKVKfLyrKcYrTS0u0B251ZH7jWslw2UTfLYk
 8DSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zuOCPbahQZK/QVR/8BEIOZS78AVnpRD1F6+hJm6hIgM=;
 b=Y6vJ/tgyW7IWiO9xATQtOsJ8t5NfzzPW5lWD9XshUAZltdZKkT4+7bHkl7Xe+SsgUA
 92gqrzNPa6sEEWmjSLB+LfWC4rEIiDuobu83qnwU665Xtm9CzDAoYrjC/7vpdAbkfZ4/
 qhRpdF9UFNxnJeGzgUkf7ZHgKjJBiFg+vx+iNSM4ulPK2FGWpOlVPUYVJ2nCTE0xCTzi
 UXr0HIbRaUzXRbJ8l0c37TmAsBJI2URpAx6oXE4gCHTR5nMyD2KF1gI9RvsXni9XL1yZ
 IiO1+iAzjjpVd45P4NH/9ddQqEIZbpTXM9elS7WHEYOXVN+JeYycrnmKj1GOSNF4q4yc
 ZJsw==
X-Gm-Message-State: APjAAAX29He3oisB1+vDFKxq+tbGHqMfS9v0lVHelbpEG4aPkwKgXtCC
 cJcjaGO0+vvxt6X1YMymWPBkBDgQgufMr6SCRTP7wYph
X-Google-Smtp-Source: APXvYqw0vZ9jZV2H1865f4dZ5Ebib+p+d1BBZkrifVWE4zAAsLpJ1NDgGUukxw1HkHjQgjhdxceG3jXQox9X6Ld9Iss=
X-Received: by 2002:a5d:5708:: with SMTP id a8mr3033677wrv.240.1569506458952; 
 Thu, 26 Sep 2019 07:00:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190725203442.29795-1-richard@nod.at> <1846895.TZtMPCjSJF@ada>
 <242144136.6776.1569498254158.JavaMail.zimbra@nod.at>
In-Reply-To: <242144136.6776.1569498254158.JavaMail.zimbra@nod.at>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 26 Sep 2019 16:00:47 +0200
Message-ID: <CAFLxGvw2WpY_Rx5ZwAVhJ=L--jFS-8KC0fZ9KHnFfoB5OYruYg@mail.gmail.com>
Subject: Re: [PATCH] ubi-utils: Implement a ubihealthd
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_070101_714335_143801C4 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexander Dahl <ada@thorsis.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 david oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 1:44 PM Richard Weinberger <richard@nod.at> wrote:
> The new UBI machinery which allows userspace to control scrubbing was added in 5.2.
>

ups, 5.1.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

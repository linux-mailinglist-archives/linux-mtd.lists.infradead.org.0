Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FC44A3F0
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 16:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=izlqYJguwRr/+9TTAtHAnkwIX4uXyIcJICIWMlIyjfs=; b=DFjWSKvEsnsMHH
	SdWlv/FDbJ19ykLda4TlPuteKqdV4nUYiOqJU7OqeS4coxIidL53jPRXSb6ZWx0kR32zt08islcEq
	0VhFMiUfibqL20ev3gJeW4U47wMf9a1/dOfNJw0t4+HWkeovufncK0jvGEA2E8B0a4ODgTxHvkjRK
	DoWWIW42VyOlyNIx+HMGgDbStdDlzZpQGtrTRq/3aoGDfD3Y/bSTdfkR6247FCGe+uzq0+H81JJWR
	iunos5HLbPoYEJbr1oHG1o8aA9G1EowNhDlgmPM+Kdi7Vx06HmmCiNZr91RqPBvMZlP2C6iHLEk+f
	aAdsXWxX8n4xqMKsSnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdF6d-0007Lp-LT; Tue, 18 Jun 2019 14:29:03 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdF6M-0007Kw-Hq
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 14:28:47 +0000
Received: by mail-yb1-xb44.google.com with SMTP id x187so6118064ybc.11
 for <linux-mtd@lists.infradead.org>; Tue, 18 Jun 2019 07:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=diggpJT5e6+/r+/RVt1IInno0xPhWWTLkaKy0oYQaNs=;
 b=GtK4tK/qPfXvUBtXLKYrTBKphFNhdsAQzJgrgFV9Rx/qCP8D1CPkJh3O4/cfEtWESU
 1bvV5GmDI2DJbM63tHSVTiEVjpduxNoi4C/nxQgkO5YpWVGFV0J1bnRiMTpXFLjRDRA0
 2whH40pcuRWkGEEs6hTw9qE/F84DSHSKiR7KHPaj75mIqcilDU7qfMqMhV9Io48DJ0rD
 ejJefeoODAQjC8KiS4NcV/QQ4LhwnIxi3vO+yYpRUIuxAESKDNp24ANla4bz/+3zqsRH
 eYZSHXpTNN7fxT71juMrbNGLhAdhP5o2lpvqj4GBzXFOudRdT+JkTHVkK4yagklpxmWG
 l86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=diggpJT5e6+/r+/RVt1IInno0xPhWWTLkaKy0oYQaNs=;
 b=rauKnDcdhAj70DQ2jWkQkfUK1lf4/Zdb1Io7v+VZc0i5ML/MNrnHo0WDPIlsiYvzgu
 Zs1sJJ75wt17bLM7yK4vaXAXzMr89mDR0i/hNf0k2aF2PDfIopNJIFHbnq2W9mgjorKA
 z/MgNmHtaMG33YoPpmEaUxOwLhMsNiWRLxQVKB7nGdfMbAggk5jMY33NtQb00O/ouAd5
 26VRj6ORiaxb5BgJS6dcchgBqNSmqVNX2O04CKoX9Rk6qdxlzwtH2vJJO9X7PFmJjgRn
 08rJXDWwE/QDXOLNkXAv+zx7T2VuswU0Nvpakni4WnZqKO7JTmJrFnmsodQmgDezgHIu
 DAjQ==
X-Gm-Message-State: APjAAAVeDuqBlcjG54SiUuY6KFwyUSxZ7uLXeganRAD3PwzTOrb8ai2Z
 2+3Eox5uBt2MYPVBUrJbDZkd9OeQNqhfVDwbXC8=
X-Google-Smtp-Source: APXvYqygRQmhwy9dOsZebH2SF8kxkhmrWADhNLHa7Pd9P/E/ZJZC7tlprybpd85VVqrTYEWiJGNs6J73vEaBIY+iw10=
X-Received: by 2002:a25:358b:: with SMTP id
 c133mr57078645yba.296.1560868125146; 
 Tue, 18 Jun 2019 07:28:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:5055:0:0:0:0:0 with HTTP; Tue, 18 Jun 2019 07:28:44
 -0700 (PDT)
From: Shayma <shaymamarwan03@gmail.com>
Date: Tue, 18 Jun 2019 14:28:44 +0000
Message-ID: <CANMGueg47qJ=gFdQS9QuaG2AXq-+4OMdYz_nExCbNcPhWXm5WA@mail.gmail.com>
Subject: Hallo
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_072846_628240_02F60E3A 
X-CRM114-Status: UNSURE (   0.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (michellegoodman45[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shaymamarwan03[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shaymamarwan03[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: michellegoodman45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hallo liebe bitte hoffe du bekommst meine nachricht bitte ich brauche deine
dringende Antwort jetzt
Vielen Dank
Michelle

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

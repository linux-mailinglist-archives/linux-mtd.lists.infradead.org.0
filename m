Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFA5180155
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 16:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRiQFWPi+QL1inEFF6MLjnO/FwEEIP1D10Jnho2V+X8=; b=WWYeGta7qCEdha
	qdjl/3nrng3WjfUBtsgg0MmMD4WfOhCW5zWJhbW7GMAgwsIvFdG5pef/ihEA8wKAsCAi65b7TmgVx
	+FNJoRnrtkJMsyEH+2VpYjjXmI91k3/A4yybcm80sx96S6uA94pPEhQSExxoQ3KTi/vth8VG7UO09
	rpiiF4USaqZjVz/6ghONYRvQc4I/KJ8z02Qo6kYP8yZmoZI+EJHT/UzR1sw3uaou9LUrZz5SZaqCU
	/VdG17Rxito60RG/kzhOk8viHx824MCcU/1ybXxE4uJ1E6ql3O6L2cJnd6r9akkHA9L0pAEBGYYn6
	ZnWbVaR7alKIx6KKIkVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgad-0006sk-5i; Tue, 10 Mar 2020 15:14:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgaW-0006s9-E0
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 15:14:33 +0000
Received: by mail-lf1-x143.google.com with SMTP id g4so4879461lfh.2
 for <linux-mtd@lists.infradead.org>; Tue, 10 Mar 2020 08:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WlHYJpV9LDx+Kwr6eflFKbZEkhaqyVolWhtkZZvo7vI=;
 b=bC9JS/jkIP7VzM51WtZVMaHlmsxxvIuljKiOKK6WFvu4qN/R/6XcBZns+Fks7pejna
 +RUDKNesm0NBUjTZ8xigIJXZDl6cx8hggA/jtWCT7LMGP8LLo/nTKKmb2s1ifR/3JK0h
 z2uB9XMLY5/c0TOBgeLArYwg+2yRT8+55nVRAEO5epqJnHhIKqGAy0ckBl8uH8iOiKJP
 alppN1jCrU6vC8c1j5LES7mx4UgcV3au3pxUoyfw0HXgft5cspt+2fE1bwJbCvdfk4Is
 udx0ktJUt2zyhtRv1gi4mzZ6veGz2FObycwZbNrUb5OB73XAZz+PMpMMpHaX+t/u3IB8
 9OFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WlHYJpV9LDx+Kwr6eflFKbZEkhaqyVolWhtkZZvo7vI=;
 b=hPTg7C63f6QS5iVAXaO4r9QXzQ2ODc37pMWg9h8kfMx6cSFTTVRwHeWYx618iZLrcP
 JSxZu5x88f5DT2yP87swwY+QUAhh7Lxsjb+sdinKBqI9bc77rcLRHUk+a2q2PfoDduPD
 okbhpK/UL1ZwjkjRHqYEceJD/8SPHVlC3lhDBpJh2olnr6ncOv2kgg1exoHjhIbcJn5i
 sv2O///V65lnOi+ly3E/ex4I1PArTVWbf3NF+m90M5t5hEMyc3oBsj1gSvsdVZqkA+A3
 srezqhnUe1L1ygS3hP6IyglBmZTh3EMJsoX2UlMsI01xVuRP1KNv22a3FKpE19lvas3+
 wwFg==
X-Gm-Message-State: ANhLgQ1wSo4d6HUZ8sDHvBxWIX1MNDfAWTJ99u0EdRdwqrR2QU0TmdD0
 Ky72NqUFQBHEwNJaS3qwUIWhL6NjQW8JGwu1tg==
X-Google-Smtp-Source: ADFU+vux0gBcOt7g0H1jKQ8HRDO6Y0KtWq92qVSuP3ufFVJmDagqoUE8i7LA1GxQWV0FFXFOwlLboR1HEWm91KhLzgE=
X-Received: by 2002:ac2:58ee:: with SMTP id v14mr12980253lfo.62.1583853268607; 
 Tue, 10 Mar 2020 08:14:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5705:0:0:0:0:0 with HTTP; Tue, 10 Mar 2020 08:14:28
 -0700 (PDT)
From: "Cy.Eden" <asdam997@gmail.com>
Date: Tue, 10 Mar 2020 15:14:28 +0000
Message-ID: <CAPN9pvTL4+hje0MhO+N4d_zdeed8wZx+-G7m3DqWQfbijdaYtA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_081432_474428_2F399DA1 
X-CRM114-Status: UNSURE (   0.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [asdam997[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [cyeden1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [asdam997[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: cyeden1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello I have an important information from UNITED NATIONS for
you,reply for more details

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

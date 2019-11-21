Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685CF10559D
	for <lists+linux-mtd@lfdr.de>; Thu, 21 Nov 2019 16:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:From:Date:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ij6OTCh3yMDCAvtam5mp2pE84/xLXsUhc57bno6oSnw=; b=if4
	aWxPF4ri4VeJfjjHVRGhhn3M5aSaLWU/ps7QesuT3zY7XOFAGL6XyOJlXF/otDAFaFzusuzBDc6XH
	emP0bY+LVR8TlYRJGu/08mFR7ThVP1JSJYYb5k0HT9yREtGB82HGAAnDghGno3uE6rmLgE2GWYxg6
	/EH/q/PeCAGGQVYihUnq2cBUPBNyIlmNrpLg0lQsY97dSzcFaJpUzPSIrbhPCgE4z6G4npr8MdbXy
	UUopbUMNOLf4QL16gyrh8yJKwfeZ5sIzVxDglNMcLJZF3ep+arwdDmyXtEwhzmUHmJgHo60waG/pC
	H6HmyRiyQknZFftRbBRu+F159rvEI4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXoOv-0006y3-Hi; Thu, 21 Nov 2019 15:29:45 +0000
Received: from sonic306-20.consmr.mail.sg3.yahoo.com ([106.10.241.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXoOi-0006xV-Iq
 for linux-mtd@lists.infradead.org; Thu, 21 Nov 2019 15:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1574350167; bh=5If8RNOeC5VOLQ3AEwcjrieMGzFiyhgIn61UwJBH9es=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=RpD0lFGJ/GRTsGMuNLw97YwDDxPCX6eajxYERksVdW/1UbDv2p8ilFAAhKRl5pt5D5uWhtC8JkygSZaURdkJIcWcr0+b3b5OIuHp7huo5+rMPfOrYRDKm+dTvZBdkc8zzbA4LAzKT3qNrvvrmvUc4jUVzjYeKPHjLaaf+sD6Gv5GNcPniOa0UnY5Pn8Epr+eCuIer8zYe2ZY8XGKRk1bROOKh4yuwj3hAXgb0+5+tdt/ohr3iYO/QoQRrkU3m6Hw+tn4d1COUvZYk1rfdRLJurPGyewZJip5hqYjBrVFhEXr7b4dFiTdEVFRKTDhA+Jq1ijRSKPaU4o3L8FaAIUrqQ==
X-YMail-OSG: Hcfy6d4VM1kB_ZayhGZtQ7rk4TsRsKaIyrBH5YSjUatGZVz1CYgV2jJYnbR5AoQ
 oGabnF.ZphPS3oizTPKWg29Jn_GuR1V2XFQbqQvgh4tQ1v9rShVP0voa2ljdJWiBP97vXpvPhl0z
 hncWDz1eLb2zkUjfZnrpO8oA_ABFfaFZOy1NhU7kxRFNd58nsWNg0IJzTDsHiteQcrrcpigdgdKf
 9V6Il2ofNl8f_e6QK39ryf.OqCq1.06jLz4Pl4.4Un55bZBDw5FfjFntqtV6uONZw1Ca1E292jxX
 VvCNCpyfGP8IXsZZ42W5Xnge_M7dA9wEGuSJ7hVcdatzVGifUeSttODvDe2FzKpND4Lmh68VUMGs
 hYx_bvt.r43aKTK3nGkQTojSFqVP3e_yX19.j8wH6nWR0C9kElmCBBjII9xpJjCW7kR0XFSqJbXh
 6_cfxc4yCMlvQcj9E3h.VZRCXRXKqBO2HtOrfQMmAhZLjJLG4aROmjc4F6REGDnwW.2uN2yZwiGn
 244H2HMFLbMCeUDlOGd3ljnhTsGsiOMX3FREzvNE4n6CAOYpOsyzGqAEp0F5dxJDiDhob20VWpua
 eLBq3jMlvHWRCBKUoBPKb5lF0YPUd4sDJemmIv6NWmJNwSlrAABJURrcIBFJLbom12NiS9AmRJqu
 BD8ywpoMm21NhwU_FYkTXr1da1DOxEY9lBGHoGkNyiQxKc697BUmyK6dIKkqOTpOsaqyLdTgIDMR
 gS0VlJuzlfAIKZX.Pm6IDVHCLcXG.ziIB65xxO9gKdttgs0olEXF4m3_6r27DDClvGeO0jciJpiE
 mLa1JKwTSqcbUBsexDLk4C0x9PUMiB.Z0Bdp_NwfyWL7BTj2b9eo1iPocLSlqjdyCLSjJi4ZBKk_
 B3vniUdcixiG74WTXo43VAexC1MkLTBr7qssAQBMsLZoLK.CvdoSnNXedFAZMj3RVOpvpI_.oHz1
 9HezN6zcRyji1BnU8KdkgK8Ntib91N925n3ewnvuPe_RZBhzAmmxUyqt9ZahuVtg_BDF2wwr45RL
 It.s.flNZ1.fADHd9znr0e8fCTXlUa0gamNs3WrIRW8xQai5i4vXXa4i_e8fUVjo64YLy_H7KbOr
 QEclgh.QX7f7P5aI8u95Ck0ZKL48wmjpQjWGVbhZvkFttgtRqSp3blSwPl9c7FEL_I9Z885Z6jU_
 AKl9So3TpzHcFgSeC4KSf5WZAExPL_h68gktIr4l86QkHqIPKeDCrlMGxaN0ALPt7drq_HF4FlcF
 ggvuR5GUE5PM21fHK4ifmihSOPrzAxXyoTfVs3iP_RI13ZQ29o217uMx3aSEPF1MgqaOql98MjYs
 E_f72ow--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Nov 2019 15:29:27 +0000
Date: Thu, 21 Nov 2019 15:29:22 +0000 (UTC)
From: "Mr. Joon-Kyu Lin" <johnpfox@yahoo.com>
Message-ID: <1669325196.3448086.1574350162373@mail.yahoo.com>
Subject: Venture Capital & Private Investors
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_072932_983557_D0025AA7 
X-CRM114-Status: UNSURE (   1.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [106.10.241.140 listed in list.dnswl.org]
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (johnpfox[at]yahoo.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service 1.9 REPLYTO_WITHOUT_TO_CC  No description available.
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: afginvestmentbrokers@al-faisaliah.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Attention: 

I am an investor that can provide funding for any viable business idea or
venture.

Please do let me know if you have fund management abilities, credible
projects in need of funding or advanced stage projects requiring Bank
Guarantees, Loans or Partnership, Joint Venture, Equity, we would be
delighted to work with you.


Best Regards,
Mr. Joon-Kyu Lim
Al Faisaliah Group (AFG)
Venture Capital & Private Investors

--
*This email and any attachments are intended for the named recipients only
and contain confidential materials. Any unauthorized copying, reviewing,
dissemination or other use by anyone other than the named recipients of
this communication is strictly prohibited. If you received this email in
error and/or are not a named recipient, please notify the sender (Al
Faisaliah Group) and delete all copies of this email. Thank you.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

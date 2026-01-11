.class public final Lʽˑ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Z

.field public final ʼᐧ:Ljava/lang/String;

.field public final ʽ:Landroid/net/Uri;

.field public final ˆʾ:J

.field public final ˈ:J

.field public final ˉʿ:Lʼʻ/ᵎⁱ;

.field public final ˉˆ:Z

.field public final ˑﹳ:J

.field public final ٴﹶ:J

.field public final ᵎﹶ:J

.field public final ᵔʾ:Lʼʻ/ʿᵢ;

.field public final ᵔᵢ:Ljava/util/List;

.field public final ᵔﹳ:Ljava/lang/String;

.field public final ⁱˊ:Landroid/net/Uri;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞʻ:Lʼʻ/ᵎⁱ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/ArrayList;ZJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʽˑ/ﾞᴵ;->ⁱˊ:Landroid/net/Uri;

    iput-object p3, p0, Lʽˑ/ﾞᴵ;->ʽ:Landroid/net/Uri;

    iput-wide p4, p0, Lʽˑ/ﾞᴵ;->ˈ:J

    iput-wide p6, p0, Lʽˑ/ﾞᴵ;->ˑﹳ:J

    iput-wide p8, p0, Lʽˑ/ﾞᴵ;->ﾞᴵ:J

    iput-wide p10, p0, Lʽˑ/ﾞᴵ;->ᵎﹶ:J

    iput-object p12, p0, Lʽˑ/ﾞᴵ;->ᵔᵢ:Ljava/util/List;

    iput-boolean p13, p0, Lʽˑ/ﾞᴵ;->ʼˎ:Z

    move-wide p1, p14

    iput-wide p1, p0, Lʽˑ/ﾞᴵ;->ˆʾ:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lʽˑ/ﾞᴵ;->ٴﹶ:J

    invoke-static/range {p18 .. p18}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ﾞʻ:Lʼʻ/ᵎⁱ;

    invoke-static/range {p19 .. p19}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ˉʿ:Lʼʻ/ᵎⁱ;

    new-instance p1, Lcom/parse/ʼᐧ;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/parse/ʼᐧ;-><init>(I)V

    move-object/from16 p2, p20

    invoke-static {p1, p2}, Lʼʻ/ᵎⁱ;->ˏי(Ljava/util/Comparator;Ljava/util/List;)Lʼʻ/ʿᵢ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ᵔʾ:Lʼʻ/ʿᵢ;

    move/from16 p1, p21

    iput-boolean p1, p0, Lʽˑ/ﾞᴵ;->ˉˆ:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ʼᐧ:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lʽˑ/ﾞᴵ;->ᵔﹳ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lʽˑ/ﾞᴵ;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lʽˑ/ﾞᴵ;

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ˈ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ˈ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ˑﹳ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ˑﹳ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ﾞᴵ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ﾞᴵ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ᵎﹶ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ᵎﹶ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lʽˑ/ﾞᴵ;->ʼˎ:Z

    iget-boolean v1, p1, Lʽˑ/ﾞᴵ;->ʼˎ:Z

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ˆʾ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ˆʾ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ٴﹶ:J

    iget-wide v2, p1, Lʽˑ/ﾞᴵ;->ٴﹶ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lʽˑ/ﾞᴵ;->ˉˆ:Z

    iget-boolean v1, p1, Lʽˑ/ﾞᴵ;->ˉˆ:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ⁱˊ:Landroid/net/Uri;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ⁱˊ:Landroid/net/Uri;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ʽ:Landroid/net/Uri;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ʽ:Landroid/net/Uri;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ᵔᵢ:Ljava/util/List;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ᵔᵢ:Ljava/util/List;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ﾞʻ:Lʼʻ/ᵎⁱ;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ﾞʻ:Lʼʻ/ᵎⁱ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ˉʿ:Lʼʻ/ᵎⁱ;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ˉʿ:Lʼʻ/ᵎⁱ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ᵔʾ:Lʼʻ/ʿᵢ;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ᵔʾ:Lʼʻ/ʿᵢ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ʼᐧ:Ljava/lang/String;

    iget-object v1, p1, Lʽˑ/ﾞᴵ;->ʼᐧ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˑ/ﾞᴵ;->ᵔﹳ:Ljava/lang/String;

    iget-object p1, p1, Lʽˑ/ﾞᴵ;->ᵔﹳ:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 11

    iget-wide v0, p0, Lʽˑ/ﾞᴵ;->ˈ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lʽˑ/ﾞᴵ;->ˑﹳ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lʽˑ/ﾞᴵ;->ﾞᴵ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lʽˑ/ﾞᴵ;->ᵎﹶ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lʽˑ/ﾞᴵ;->ʼˎ:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-wide v5, p0, Lʽˑ/ﾞᴵ;->ˆʾ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lʽˑ/ﾞᴵ;->ٴﹶ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, p0, Lʽˑ/ﾞᴵ;->ˉˆ:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x11

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lʽˑ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lʽˑ/ﾞᴵ;->ⁱˊ:Landroid/net/Uri;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lʽˑ/ﾞᴵ;->ʽ:Landroid/net/Uri;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v0, v8, v9

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v2, v8, v0

    const/4 v0, 0x6

    aput-object v3, v8, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ᵔᵢ:Ljava/util/List;

    aput-object v1, v8, v0

    const/16 v0, 0x8

    aput-object v4, v8, v0

    const/16 v0, 0x9

    aput-object v5, v8, v0

    const/16 v0, 0xa

    aput-object v6, v8, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ﾞʻ:Lʼʻ/ᵎⁱ;

    aput-object v1, v8, v0

    const/16 v0, 0xc

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ˉʿ:Lʼʻ/ᵎⁱ;

    aput-object v1, v8, v0

    const/16 v0, 0xd

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ᵔʾ:Lʼʻ/ʿᵢ;

    aput-object v1, v8, v0

    const/16 v0, 0xe

    aput-object v7, v8, v0

    const/16 v0, 0xf

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ʼᐧ:Ljava/lang/String;

    aput-object v1, v8, v0

    const/16 v0, 0x10

    iget-object v1, p0, Lʽˑ/ﾞᴵ;->ᵔﹳ:Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-static {v8}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

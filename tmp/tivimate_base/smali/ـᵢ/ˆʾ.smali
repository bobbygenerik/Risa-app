.class public final Lـᵢ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴᵎ/ʼˎ;


# instance fields
.field public ʽ:J

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/lang/Object;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ⁱˊ:J

.field public final synthetic ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lـᵢ/ˆʾ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    iput-object p3, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    iput-object p4, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    iput-wide p6, p0, Lـᵢ/ˆʾ;->ʽ:J

    iput-object p5, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    iput-object p8, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lٴᵎ/ʾᵎ;Lﾞʿ/ʽ;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lـᵢ/ˆʾ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    iput-object p2, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lـᵢ/ˆʾ;->ʽ:J

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    iget-object p1, p2, Lﾞʿ/ʽ;->ﹳٴ:Lᐧﹳ/ʽ;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    iput v0, p0, Lـᵢ/ˆʾ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p3, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    iput-object p4, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    const/4 p4, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne p4, v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    iput-wide p5, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    iput-wide p7, p0, Lـᵢ/ˆʾ;->ʽ:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-static {p3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId"

    invoke-virtual {p2, p3, p4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz p9, :cond_5

    invoke-virtual {p9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    iget-object p4, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p4, p4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p5, "Param name can\'t be null"

    invoke-virtual {p4, p5}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p5, p1, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {p5}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6, p4}, Lﹶﾞ/ᵢﹳ;->ˈـ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_3

    iget-object p5, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p5, p5, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    iget-object p6, p1, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {p6, p4}, Lﹶﾞ/ˑٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p6, "Param value can\'t be null"

    invoke-virtual {p5, p4, p6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p6, p1, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {p6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {p6, p2, p4, p5}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lﹶﾞ/יـ;

    invoke-direct {p1, p2}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lﹶﾞ/יـ;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    :goto_1
    iput-object p1, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLﹶﾞ/יـ;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    iput v0, p0, Lـᵢ/ˆʾ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p9}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p3, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    iput-object p4, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    iput-wide p5, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    iput-wide p7, p0, Lـᵢ/ˆʾ;->ʽ:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-static {p3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p2

    invoke-static {p4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId, name"

    invoke-virtual {p1, p2, p3, p4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p9, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    iget v0, p0, Lـᵢ/ˆʾ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/יـ;

    invoke-virtual {v0}, Lﹶﾞ/יـ;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Event{appId=\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', params="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public ʼˎ(J)J
    .locals 3

    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ʼˎ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v1, p0, Lـᵢ/ˆʾ;->ʽ:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lـᵢ/ʼˎ;->ʽ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴᵎ/ـˆ;

    invoke-interface {v2}, Lٴᵎ/ـˆ;->cancel()V

    invoke-interface {v2}, Lٴᵎ/ـˆ;->ⁱˊ()Lٴᵎ/ـˆ;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v3, Lٴᵎ/ʾᵎ;

    invoke-interface {v3}, Lٴᵎ/ʾᵎ;->ᵔᵢ()Lﹶˈ/ᵔᵢ;

    move-result-object v3

    invoke-virtual {v3, v2}, Lﹶˈ/ᵔᵢ;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public ˆʾ(JJ)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ʼˎ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v0}, Lـᵢ/ʼˎ;->ـˆ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ˈ(JLٴᴵ/ˉʿ;)Lـᵢ/ˆʾ;
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lٴᴵ/ˉʿ;

    invoke-virtual {v1}, Lٴᴵ/ˉʿ;->ˈ()Lـᵢ/ʼˎ;

    move-result-object v9

    move-object v1, v9

    invoke-virtual/range {p3 .. p3}, Lٴᴵ/ˉʿ;->ˈ()Lـᵢ/ʼˎ;

    move-result-object v9

    if-nez v1, :cond_0

    move-object v9, v1

    new-instance v1, Lـᵢ/ˆʾ;

    iget-object v2, v0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lٴᴵ/ⁱˊ;

    iget-object v2, v0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lᵢˋ/ˈ;

    iget-wide v7, v0, Lـᵢ/ˆʾ;->ʽ:J

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    return-object v1

    :cond_0
    move-object/from16 v20, v9

    move-object v9, v1

    move-object/from16 v1, v20

    invoke-interface {v9}, Lـᵢ/ʼˎ;->ـˆ()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v9, v1

    new-instance v1, Lـᵢ/ˆʾ;

    iget-object v2, v0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lٴᴵ/ⁱˊ;

    iget-object v2, v0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lᵢˋ/ˈ;

    iget-wide v7, v0, Lـᵢ/ˆʾ;->ʽ:J

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    return-object v1

    :cond_1
    move-object v2, v9

    move-object v9, v1

    move-object v1, v2

    move-wide/from16 v2, p1

    invoke-interface {v1, v2, v3}, Lـᵢ/ʼˎ;->ᴵᵔ(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    new-instance v1, Lـᵢ/ˆʾ;

    iget-object v4, v0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lٴᴵ/ⁱˊ;

    iget-object v4, v0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lᵢˋ/ˈ;

    iget-wide v7, v0, Lـᵢ/ˆʾ;->ʽ:J

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    return-object v1

    :cond_2
    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v1}, Lـᵢ/ʼˎ;->ʼʼ()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lـᵢ/ʼˎ;->ʽ(J)J

    move-result-wide v10

    add-long/2addr v4, v6

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    invoke-interface {v1, v12, v13}, Lـᵢ/ʼˎ;->ʽ(J)J

    move-result-wide v14

    invoke-interface {v1, v12, v13, v2, v3}, Lـᵢ/ʼˎ;->ᵎﹶ(JJ)J

    move-result-wide v12

    add-long/2addr v12, v14

    invoke-interface {v9}, Lـᵢ/ʼˎ;->ʼʼ()J

    move-result-wide v14

    move-wide/from16 v16, v4

    invoke-interface {v9, v14, v15}, Lـᵢ/ʼˎ;->ʽ(J)J

    move-result-wide v4

    move-wide/from16 v18, v6

    iget-wide v6, v0, Lـᵢ/ˆʾ;->ʽ:J

    cmp-long v8, v12, v4

    if-nez v8, :cond_3

    sub-long v4, v16, v14

    :goto_0
    add-long/2addr v4, v6

    :goto_1
    move-wide v7, v4

    goto :goto_2

    :cond_3
    if-ltz v8, :cond_5

    cmp-long v8, v4, v10

    if-gez v8, :cond_4

    invoke-interface {v9, v10, v11, v2, v3}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v4

    sub-long v4, v4, v18

    sub-long v4, v6, v4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v4, v5, v2, v3}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v14

    goto :goto_0

    :goto_2
    new-instance v1, Lـᵢ/ˆʾ;

    iget-object v4, v0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lٴᴵ/ⁱˊ;

    iget-object v4, v0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lᵢˋ/ˈ;

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    return-object v1

    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method public ˑﹳ(J)J
    .locals 3

    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ʼˎ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v1, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v0, v1, v2, p1, p2}, Lـᵢ/ʼˎ;->ˉˆ(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lـᵢ/ˆʾ;->ʽ:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public ٴﹶ()Lٴᵎ/ʻٴ;
    .locals 7

    .prologue
    iget-object v0, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lٴᵎ/ʾᵎ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lٴᵎ/ʾᵎ;->ˆʾ(Lٴᵎ/ᵔﹳ;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v0}, Lٴᵎ/ʾᵎ;->ʼˎ()Lٴᵎ/ـˆ;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Lٴᵎ/ˆʾ;

    invoke-direct {v3, v2}, Lٴᵎ/ˆʾ;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v2}, Lٴᵎ/ـˆ;->ﹳٴ()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lٴᵎ/ʻٴ;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v3}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V

    return-object v0

    :cond_0
    instance-of v3, v2, Lٴᵎ/ˆʾ;

    if-eqz v3, :cond_1

    check-cast v2, Lٴᵎ/ˆʾ;

    iget-object v0, v2, Lٴᵎ/ˆʾ;->ﹳٴ:Lٴᵎ/ʻٴ;

    return-object v0

    :cond_1
    iget-object v3, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lⁱᐧ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lٴᵎ/ʾᵎ;->ٴﹶ()Lˎᵢ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v0}, Lˎᵢ/ʼᐧ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lﾞʿ/ʽ;

    invoke-virtual {v3}, Lﾞʿ/ʽ;->ˈ()Lﾞʿ/ⁱˊ;

    move-result-object v3

    new-instance v4, Lٴᵎ/ٴﹶ;

    invoke-direct {v4, v0, v2, p0}, Lٴᵎ/ٴﹶ;-><init>(Ljava/lang/String;Lٴᵎ/ـˆ;Lـᵢ/ˆʾ;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lﾞʿ/ⁱˊ;->ˈ(Lﾞʿ/ﹳٴ;J)V

    :cond_2
    return-object v1
.end method

.method public ᵎﹶ()J
    .locals 3

    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـᵢ/ʼˎ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v1, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v0, v1, v2}, Lـᵢ/ʼˎ;->ᴵᵔ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ᵔᵢ(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v0

    iget-object v2, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lـᵢ/ʼˎ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v3, p0, Lـᵢ/ˆʾ;->ʽ:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v2, p1, p2, v3, v4}, Lـᵢ/ʼˎ;->ᵎﹶ(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public ⁱˊ()Lٴᵎ/ʾᵎ;
    .locals 1

    iget-object v0, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lٴᵎ/ʾᵎ;

    return-object v0
.end method

.method public ﹳٴ()Lٴᵎ/ᵔﹳ;
    .locals 10

    .prologue
    iget-object v0, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lٴᵎ/ʾᵎ;

    iget-object v1, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v2}, Lٴᵎ/ʾᵎ;->ˆʾ(Lٴᵎ/ᵔﹳ;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lـᵢ/ˆʾ;->ʽ()V

    throw v3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v0}, Lٴᵎ/ʾᵎ;->ᵎﹶ()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Lﾞʿ/ʽ;

    iget-object v4, v4, Lﾞʿ/ʽ;->ﹳٴ:Lᐧﹳ/ʽ;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lـᵢ/ˆʾ;->ʽ:J

    sub-long/2addr v6, v4

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    goto :goto_2

    :cond_3
    move-wide v7, v6

    move-object v6, v2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lـᵢ/ˆʾ;->ٴﹶ()Lٴᵎ/ʻٴ;

    move-result-object v6

    iget-wide v7, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Lـᵢ/ˆʾ;->ʽ:J

    :goto_3
    if-nez v6, :cond_7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    move-object v6, v2

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5, v7, v8, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lٴᵎ/ʻٴ;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, v4, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-object v6, v4

    :goto_5
    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    iget-object v4, v6, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    iget-object v5, v6, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_8

    iget-object v5, v6, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    move v5, v8

    goto :goto_6

    :cond_8
    move v5, v7

    :goto_6
    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lـᵢ/ˆʾ;->ʽ()V

    invoke-interface {v4}, Lٴᵎ/ـˆ;->ﹳٴ()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v4}, Lٴᵎ/ـˆ;->ʽ()Lٴᵎ/ʻٴ;

    move-result-object v6

    :cond_9
    iget-object v4, v6, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    if-nez v4, :cond_a

    iget-object v4, v6, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    move v7, v8

    :cond_a
    if-eqz v7, :cond_b

    iget-object v0, v6, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    invoke-interface {v0}, Lٴᵎ/ـˆ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lـᵢ/ˆʾ;->ʽ()V

    return-object v0

    :cond_b
    :try_start_2
    iget-object v4, v6, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_d

    if-nez v3, :cond_c

    check-cast v4, Ljava/io/IOException;

    move-object v3, v4

    goto :goto_7

    :cond_c
    invoke-static {v3, v4}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_d
    throw v4

    :cond_e
    :goto_7
    iget-object v4, v6, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lٴᵎ/ʾᵎ;->ᵔᵢ()Lﹶˈ/ᵔᵢ;

    move-result-object v5

    invoke-virtual {v5, v4}, Lﹶˈ/ᵔᵢ;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    invoke-virtual {p0}, Lـᵢ/ˆʾ;->ʽ()V

    throw v0
.end method

.method public ﾞʻ(Lﹶﾞ/ᵎʻ;J)Lـᵢ/ˆʾ;
    .locals 11

    iget-object v0, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lﹶﾞ/יـ;

    iget-object v0, p0, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v1, Lـᵢ/ˆʾ;

    iget-wide v6, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    move-object v2, p1

    move-wide v8, p2

    invoke-direct/range {v1 .. v10}, Lـᵢ/ˆʾ;-><init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLﹶﾞ/יـ;)V

    return-object v1
.end method

.method public ﾞᴵ(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Lـᵢ/ˆʾ;->ˑﹳ(J)J

    move-result-wide v0

    iget-object v2, p0, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lـᵢ/ʼˎ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v3, p0, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v2, v3, v4, p1, p2}, Lـᵢ/ʼˎ;->ٴᵢ(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    return-wide p1
.end method

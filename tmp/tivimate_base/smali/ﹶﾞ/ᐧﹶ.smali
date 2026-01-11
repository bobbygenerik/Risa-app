.class public final Lﹶﾞ/ᐧﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:J

.field public final synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JI)V
    .locals 0

    iput p7, p0, Lﹶﾞ/ᐧﹶ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ᐧﹶ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lﹶﾞ/ᐧﹶ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lﹶﾞ/ᐧﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-wide p5, p0, Lﹶﾞ/ᐧﹶ;->ˈٴ:J

    iput-object p1, p0, Lﹶﾞ/ᐧﹶ;->ˊʻ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ﾞˏ;Landroid/os/Bundle;Lﹶﾞ/ﹶʽ;Lﹶﾞ/ﹶʽ;J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lﹶﾞ/ᐧﹶ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ᐧﹶ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lﹶﾞ/ᐧﹶ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lﹶﾞ/ᐧﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-wide p5, p0, Lﹶﾞ/ᐧﹶ;->ˈٴ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ᐧﹶ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    iget v0, p0, Lﹶﾞ/ᐧﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ˊʻ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lﹶﾞ/ﾞˏ;

    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lﹶﾞ/ᐧﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ﹶʽ;

    iget-object v3, p0, Lﹶﾞ/ᐧﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ﹶʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "screen_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "screen_class"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v4, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screen_view"

    invoke-virtual {v4, v7, v0, v5, v6}, Lﹶﾞ/ᵢﹳ;->ˎʾ(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    iget-wide v4, p0, Lﹶﾞ/ᐧﹶ;->ˈٴ:J

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lﹶﾞ/ﾞˏ;->ˎˉ(Lﹶﾞ/ﹶʽ;Lﹶﾞ/ﹶʽ;JZLandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ˊʻ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lﹶﾞ/ˈـ;

    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ʽʽ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v4, p0, Lﹶﾞ/ᐧﹶ;->ᴵᵔ:Ljava/lang/Object;

    iget-wide v2, p0, Lﹶﾞ/ᐧﹶ;->ˈٴ:J

    invoke-virtual/range {v1 .. v6}, Lﹶﾞ/ˈـ;->ﹳᵢ(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ᐧﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lﹶﾞ/ᐧﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ʼـ;

    iget-object v2, p0, Lﹶﾞ/ᐧﹶ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v1, v1, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ˊᵔ:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lﹶﾞ/ᵢי;->ˊᵔ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v1, Lﹶﾞ/ᵢי;->ʻᵎ:Lﹶﾞ/ﹶʽ;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lﹶﾞ/ᐧﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lﹶﾞ/ﹶʽ;

    iget-wide v5, p0, Lﹶﾞ/ᐧﹶ;->ˈٴ:J

    invoke-direct {v4, v5, v6, v3, v2}, Lﹶﾞ/ﹶʽ;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ˊᵔ:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    iput-object v0, v1, Lﹶﾞ/ᵢי;->ˊᵔ:Ljava/lang/String;

    iput-object v4, v1, Lﹶﾞ/ᵢי;->ʻᵎ:Lﹶﾞ/ﹶʽ;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

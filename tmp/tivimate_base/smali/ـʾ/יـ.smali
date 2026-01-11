.class public final synthetic Lـʾ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ⁱˊ:Lـʾ/ʾˋ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lـʾ/ʾˋ;I)V
    .locals 0

    iput p2, p0, Lـʾ/יـ;->ﹳٴ:I

    iput-object p1, p0, Lـʾ/יـ;->ⁱˊ:Lـʾ/ʾˋ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lـʾ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lـʾ/יـ;->ⁱˊ:Lـʾ/ʾˋ;

    iget-object v1, v0, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    iget-object v0, v0, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lˑᵎ/ʾᵎ;->ʽ(Ljava/lang/String;)Lᴵˋ/ˈٴ;

    move-result-object v2

    sget-object v3, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Lᴵˋ/ˈٴ;->ᴵˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v1, v2, v0}, Lˑᵎ/ʾᵎ;->ᵎﹶ(Lᴵˋ/ˈٴ;Ljava/lang/String;)I

    iget-object v2, v1, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v3, Lˑᵎ/ʽ;

    const/16 v5, 0xf

    invoke-direct {v3, v5, v0}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    const/16 v2, -0x100

    invoke-virtual {v1, v2, v0}, Lˑᵎ/ʾᵎ;->ᵔᵢ(ILjava/lang/String;)V

    move v4, v5

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lـʾ/יـ;->ⁱˊ:Lـʾ/ʾˋ;

    iget-object v1, v0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    iget-object v2, v1, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iget-object v3, v1, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    sget-object v4, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    if-eq v2, v4, :cond_1

    sget-object v0, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lˑᵎ/ﹳᐧ;->ʽ()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-ne v2, v4, :cond_3

    iget v2, v1, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    if-lez v2, :cond_3

    :cond_2
    iget-object v0, v0, Lـʾ/ʾˋ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lˑᵎ/ﹳᐧ;->ﹳٴ()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Delaying execution for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it is being executed before schedule."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

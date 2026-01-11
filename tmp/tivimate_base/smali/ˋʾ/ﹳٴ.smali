.class public final Lˋʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˋʾ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˏˆ/ﹳٴ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˋʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    sget-object v0, Lᵎˑ/ⁱˊ;->ⁱˊ:Lﾞʼ/ﹳٴ;

    invoke-virtual {p1}, Lˏˆ/ﹳٴ;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p1}, Lﾞʼ/ﹳٴ;->ˆʾ(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lᵎˑ/ⁱˊ;->ⁱˊ:Lﾞʼ/ﹳٴ;

    invoke-virtual {p1}, Lˏˆ/ﹳٴ;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

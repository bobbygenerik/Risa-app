.class public final synthetic Lˑʼ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lˑʼ/ˉˆ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˑʼ/ʽᵔ;


# direct methods
.method public synthetic constructor <init>(Lˑʼ/ʽᵔ;Lˑʼ/ˉˆ;I)V
    .locals 0

    iput p3, p0, Lˑʼ/ﾞʻ;->ʾˋ:I

    iput-object p1, p0, Lˑʼ/ﾞʻ;->ᴵˊ:Lˑʼ/ʽᵔ;

    iput-object p2, p0, Lˑʼ/ﾞʻ;->ʽʽ:Lˑʼ/ˉˆ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget v0, p0, Lˑʼ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ﾞʻ;->ᴵˊ:Lˑʼ/ʽᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transition for operation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has completed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, p0, Lˑʼ/ﾞʻ;->ʽʽ:Lˑʼ/ˉˆ;

    invoke-virtual {v1, v0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ﾞʻ;->ᴵˊ:Lˑʼ/ʽᵔ;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transition for operation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has completed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_1
    iget-object v0, p0, Lˑʼ/ﾞʻ;->ʽʽ:Lˑʼ/ˉˆ;

    invoke-virtual {v1, v0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

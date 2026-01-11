.class public final Lˑʼ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˑʼ/ᴵᵔ;


# direct methods
.method public synthetic constructor <init>(ILˑʼ/ᴵᵔ;)V
    .locals 0

    iput p1, p0, Lˑʼ/ʾᵎ;->ʾˋ:I

    iput-object p2, p0, Lˑʼ/ʾᵎ;->ᴵˊ:Lˑʼ/ᴵᵔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lˑʼ/ʾᵎ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˑʼ/ʾᵎ;->ᴵˊ:Lˑʼ/ᴵᵔ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lˑʼ/ᴵᵔ;->ـˏ(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˑʼ/ʾᵎ;->ᴵˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->יˉ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

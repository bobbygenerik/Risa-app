.class public final Lﹶﾞ/ٴʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹶﾞ/ﾞˏ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ﾞˏ;I)V
    .locals 0

    .prologue
    iput p2, p0, Lﹶﾞ/ٴʿ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ٴʿ;->ᴵˊ:Lﹶﾞ/ﾞˏ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ٴʿ;->ᴵˊ:Lﹶﾞ/ﾞˏ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ٴʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ٴʿ;->ᴵˊ:Lﹶﾞ/ﾞˏ;

    const/4 v1, 0x0

    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ٴʼ:Lﹶﾞ/ﹶʽ;

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ٴʿ;->ᴵˊ:Lﹶﾞ/ﾞˏ;

    iget-object v1, v0, Lﹶﾞ/ﾞˏ;->ٴʼ:Lﹶﾞ/ﹶʽ;

    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

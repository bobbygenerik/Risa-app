.class public final synthetic Lʼˋ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹶﾞ/ⁱי;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ⁱי;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lʼˋ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lʼˋ/ʽ;->ᴵˊ:Lﹶﾞ/ⁱי;

    iput-object p2, p0, Lʼˋ/ʽ;->ʽʽ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʼˋ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼˋ/ʽ;->ᴵˊ:Lﹶﾞ/ⁱי;

    iget-object v1, p0, Lʼˋ/ʽ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ﾞᴵ(Ljava/lang/String;)Lﹳᴵ/ﹳٴ;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼˋ/ʽ;->ᴵˊ:Lﹶﾞ/ⁱי;

    iget-object v1, p0, Lʼˋ/ʽ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ﾞᴵ(Ljava/lang/String;)Lﹳᴵ/ﹳٴ;

    move-result-object v0

    const-string v1, "PRAGMA query_only = 1"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

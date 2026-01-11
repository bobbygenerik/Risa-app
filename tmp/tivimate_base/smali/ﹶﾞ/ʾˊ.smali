.class public final Lﹶﾞ/ʾˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Landroid/os/Bundle;

.field public final synthetic ˈ:Lﹶﾞ/ʼـ;

.field public final synthetic ⁱˊ:Lﹶﾞ/ʻᐧ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lﹶﾞ/ʾˊ;->ﹳٴ:I

    iput-object p2, p0, Lﹶﾞ/ʾˊ;->ⁱˊ:Lﹶﾞ/ʻᐧ;

    iput-object p3, p0, Lﹶﾞ/ʾˊ;->ʽ:Landroid/os/Bundle;

    iput-object p1, p0, Lﹶﾞ/ʾˊ;->ˈ:Lﹶﾞ/ʼـ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lﹶﾞ/ʾˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ʾˊ;->ˈ:Lﹶﾞ/ʼـ;

    iget-object v1, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v1, p0, Lﹶﾞ/ʾˊ;->ⁱˊ:Lﹶﾞ/ʻᐧ;

    iget-object v2, p0, Lﹶﾞ/ʾˊ;->ʽ:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Lﹶﾞ/ᵢי;->ˏᵢ(Landroid/os/Bundle;Lﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ʾˊ;->ˈ:Lﹶﾞ/ʼـ;

    iget-object v1, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v1, p0, Lﹶﾞ/ʾˊ;->ⁱˊ:Lﹶﾞ/ʻᐧ;

    iget-object v2, p0, Lﹶﾞ/ʾˊ;->ʽ:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Lﹶﾞ/ᵢי;->ˏᵢ(Landroid/os/Bundle;Lﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

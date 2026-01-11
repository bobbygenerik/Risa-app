.class public final Lʾˈ/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;
.implements Lʾﹶ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lᵎˋ/ﹳٴ;


# direct methods
.method public synthetic constructor <init>(Lᵎˋ/ﹳٴ;I)V
    .locals 0

    iput p2, p0, Lʾˈ/ᵎˊ;->ʾˋ:I

    iput-object p1, p0, Lʾˈ/ᵎˊ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʾˈ/ᵎˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˈ/ᵎˊ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lʾˈ/ᵎˊ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˈ/ﹳـ;

    new-instance v1, Lʾˈ/ٴʼ;

    invoke-direct {v1, v0}, Lʾˈ/ٴʼ;-><init>(Lʾˈ/ﹳـ;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

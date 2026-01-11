.class public final synthetic Lʾˈ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʾˈ/ʽʽ;


# direct methods
.method public synthetic constructor <init>(Lʾˈ/ʽʽ;I)V
    .locals 0

    iput p2, p0, Lʾˈ/ᴵˊ;->ʾˋ:I

    iput-object p1, p0, Lʾˈ/ᴵˊ;->ᴵˊ:Lʾˈ/ʽʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾˈ/ᴵˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˈ/ᴵˊ;->ᴵˊ:Lʾˈ/ʽʽ;

    iget-object v0, v0, Lʾˈ/ʽʽ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v0}, Lʾˈ/ˊʻ;->ⁱˊ(Landroid/content/Context;)Lʾˈ/ᴵᵔ;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʾˈ/ᴵˊ;->ᴵˊ:Lʾˈ/ʽʽ;

    iget-object v0, v0, Lʾˈ/ʽʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˈ/ᴵᵔ;

    iget-object v0, v0, Lʾˈ/ᴵᵔ;->ﹳٴ:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lʾˈ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lʾˈ/ˉˆ;->ʾˋ:I

    iput-object p1, p0, Lʾˈ/ˉˆ;->ᴵˊ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʾˈ/ˉˆ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˈ/ˉˆ;->ᴵˊ:Landroid/content/Context;

    const-string v1, "aqs/sessionDataStore.data"

    invoke-static {v0, v1}, Lˈˊ/ᵔʾ;->ᵔᵢ(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʾˈ/ˉˆ;->ᴵˊ:Landroid/content/Context;

    const-string v1, "aqs/sessionConfigsDataStore.data"

    invoke-static {v0, v1}, Lˈˊ/ᵔʾ;->ᵔᵢ(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

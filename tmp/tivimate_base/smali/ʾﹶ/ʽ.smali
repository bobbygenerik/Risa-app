.class public final Lʾﹶ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹶ/ⁱˊ;
.implements Lⁱᴵ/ˉʿ;
.implements Lﾞﹶ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lʾﹶ/ʽ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʾﹶ/ʽ;->ʾˋ:I

    iput-object p2, p0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʽ(Lcom/bumptech/glide/ʽ;)Lⁱᴵ/ˑﹳ;
    .locals 1

    new-instance v0, Lـʾ/ᵔﹳ;

    invoke-direct {v0}, Lـʾ/ᵔﹳ;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static ˈ(ZIIII)Lʾﹶ/ʽ;
    .locals 7

    new-instance v0, Lʾﹶ/ʽ;

    const/4 v5, 0x0

    move v6, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    const/4 p1, 0x2

    invoke-direct {v0, p1, p0}, Lʾﹶ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;
    .locals 2

    .prologue
    new-instance v0, Lʾﹶ/ʽ;

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lʾﹶ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "instance cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;
    .locals 1

    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lⁱᴵ/ﾞʻ;->ʼʼ:Lᵔⁱ/ᵔʾ;

    return-object p1
.end method

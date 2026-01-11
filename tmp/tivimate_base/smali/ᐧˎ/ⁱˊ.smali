.class public final synthetic Lᐧˎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʻᴵ/ʼʼ;


# direct methods
.method public synthetic constructor <init>(Lʻᴵ/ʼʼ;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lᐧˎ/ⁱˊ;->ʾˋ:I

    iput-object p1, p0, Lᐧˎ/ⁱˊ;->ᴵˊ:Lʻᴵ/ʼʼ;

    iput-object p2, p0, Lᐧˎ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lᐧˎ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧˎ/ⁱˊ;->ᴵˊ:Lʻᴵ/ʼʼ;

    iget v1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lᐧˎ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lʻᴵ/ʼʼ;->ᵢˏ(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧˎ/ⁱˊ;->ᴵˊ:Lʻᴵ/ʼʼ;

    iget v1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lᐧˎ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lʻᴵ/ʼʼ;->ᵢˏ(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

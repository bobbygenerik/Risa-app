.class public final Lᴵᵔ/ᵔᵢ;
.super Lᴵᵔ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lᴵᵔ/ˉʿ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lᴵᵔ/ˉʿ;I)V
    .locals 0

    iput p2, p0, Lᴵᵔ/ᵔᵢ;->ﹳٴ:I

    iput-object p1, p0, Lᴵᵔ/ᵔᵢ;->ⁱˊ:Lᴵᵔ/ˉʿ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lᴵᵔ/ﾞᴵ;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵᵔ/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᴵᵔ/ᵔᵢ;->ⁱˊ:Lᴵᵔ/ˉʿ;

    iget-object v1, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v1, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵᵔ/ٴﹶ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    return-void

    :cond_0
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Error: animation ended is not in the node map"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lᴵᵔ/ᵔᵢ;->ⁱˊ:Lᴵᵔ/ˉʿ;

    iget-object v1, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v1, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵᵔ/ٴﹶ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    return-void

    :cond_1
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Error: animation ended is not in the node map"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

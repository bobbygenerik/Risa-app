.class public final Lˉᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public ˈ:Ljava/lang/Object;

.field public ⁱˊ:Lˉᵔ/ⁱˊ;

.field public ﹳٴ:Lˉᵔ/ⁱˊ;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˉᵔ/ⁱˊ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lˉᵔ/ⁱˊ;I)V
    .locals 0

    iput p2, p0, Lˉᵔ/ⁱˊ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object p0, p1, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lˉᵔ/ⁱˊ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

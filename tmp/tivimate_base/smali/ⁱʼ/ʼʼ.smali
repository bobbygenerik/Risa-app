.class public final Lⁱʼ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# static fields
.field public static final ⁱˊ:Lⁱʼ/ʼʼ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱʼ/ʼʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lⁱʼ/ʼʼ;-><init>(I)V

    sput-object v0, Lⁱʼ/ʼʼ;->ⁱˊ:Lⁱʼ/ʼʼ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lⁱʼ/ʼʼ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget v0, p0, Lⁱʼ/ʼʼ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 1

    .prologue
    iget p2, p0, Lⁱʼ/ʼʼ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/io/File;

    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lˋᵎ/ⁱˊ;

    invoke-direct {p3, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lⁱʼ/ˈ;

    const/4 v0, 0x0

    invoke-direct {p4, v0, p1}, Lⁱʼ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lˋᵎ/ⁱˊ;

    invoke-direct {p3, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lⁱʼ/ˈ;

    const/4 v0, 0x1

    invoke-direct {p4, v0, p1}, Lⁱʼ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

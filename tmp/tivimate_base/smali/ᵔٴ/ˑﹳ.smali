.class public final Lᵔٴ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Landroid/content/Context;

.field public final synthetic ˈ:I

.field public final synthetic ˑﹳ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Ljava/lang/String;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Lᵔٴ/ˑﹳ;->ﹳٴ:I

    iput-object p1, p0, Lᵔٴ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    iput-object p2, p0, Lᵔٴ/ˑﹳ;->ʽ:Landroid/content/Context;

    iput-object p3, p0, Lᵔٴ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    iput p4, p0, Lᵔٴ/ˑﹳ;->ˈ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lᵔٴ/ˑﹳ;->ﹳٴ:I

    iget v1, p0, Lᵔٴ/ˑﹳ;->ˈ:I

    iget-object v2, p0, Lᵔٴ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    iget-object v3, p0, Lᵔٴ/ˑﹳ;->ʽ:Landroid/content/Context;

    iget-object v4, p0, Lᵔٴ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v4, v3, v2, v1}, Lᵔٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lᵔٴ/ﾞᴵ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Lᵔٴ/ﾞᴵ;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lᵔٴ/ﾞᴵ;-><init>(I)V

    :goto_0
    return-object v0

    :pswitch_0
    check-cast v2, Lᵔٴ/ˈ;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v5, v6

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0, v1}, Lᵔٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lᵔٴ/ﾞᴵ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

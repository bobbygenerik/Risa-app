.class public Lיﹳ/ﹳٴ;
.super Landroidx/lifecycle/ᵎᵔ;
.source "SourceFile"


# static fields
.field public static final ʽ:Landroidx/lifecycle/ˊˋ;


# instance fields
.field public final ⁱˊ:Lיـ/יـ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/ˊˋ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/lifecycle/ˊˋ;-><init>(I)V

    sput-object v0, Lיﹳ/ﹳٴ;->ʽ:Landroidx/lifecycle/ˊˋ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ᵎᵔ;-><init>()V

    new-instance v0, Lיـ/יـ;

    invoke-direct {v0}, Lיـ/יـ;-><init>()V

    iput-object v0, p0, Lיﹳ/ﹳٴ;->ⁱˊ:Lיـ/יـ;

    return-void
.end method


# virtual methods
.method public final ﾞᴵ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lיﹳ/ﹳٴ;->ⁱˊ:Lיـ/יـ;

    iget v1, v0, Lיـ/יـ;->ʽʽ:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget-object v3, v0, Lיـ/יـ;->ᴵˊ:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, v0, Lיـ/יـ;->ʽʽ:I

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

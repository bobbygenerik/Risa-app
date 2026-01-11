.class public final Lˆ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ˑﹳ:I


# instance fields
.field public final ʽ:Lˆ/ⁱˊ;

.field public final ˈ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Lˆ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lˆ/ᵎﹶ;Ljava/util/List;Lˆ/ⁱˊ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆ/ﹳٴ;->ﹳٴ:Lˆ/ᵎﹶ;

    iput-object p2, p0, Lˆ/ﹳٴ;->ⁱˊ:Ljava/util/List;

    iput-object p3, p0, Lˆ/ﹳٴ;->ʽ:Lˆ/ⁱˊ;

    iput-object p4, p0, Lˆ/ﹳٴ;->ˈ:Ljava/lang/String;

    return-void
.end method

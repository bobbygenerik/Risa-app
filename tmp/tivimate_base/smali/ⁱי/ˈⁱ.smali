.class public final Lⁱי/ˈⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱי/ˆﾞ;


# instance fields
.field public final ʽ:Ljava/util/ArrayList;

.field public ˈ:I

.field public ˑﹳ:Z

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Lﹳᵢ/ʻٴ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ᴵˊ;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳᵢ/ʻٴ;

    invoke-direct {v0, p1, p2}, Lﹳᵢ/ʻٴ;-><init>(Lﹳᵢ/ᴵˊ;Z)V

    iput-object v0, p0, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Lʽⁱ/ʼˈ;
    .locals 1

    iget-object v0, p0, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    iget-object v0, v0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lⁱי/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    return-object v0
.end method

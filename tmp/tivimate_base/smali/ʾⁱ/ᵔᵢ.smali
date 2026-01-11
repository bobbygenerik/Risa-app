.class public final Lʾⁱ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈﹳ/ⁱˊ;


# instance fields
.field public final ʾˋ:Ljava/security/MessageDigest;

.field public final ᴵˊ:Lˈﹳ/ˑﹳ;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˈﹳ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʾⁱ/ᵔᵢ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    iput-object p1, p0, Lʾⁱ/ᵔᵢ;->ʾˋ:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lˈﹳ/ˑﹳ;
    .locals 1

    iget-object v0, p0, Lʾⁱ/ᵔᵢ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    return-object v0
.end method
